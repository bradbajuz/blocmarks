class IncomingController < ApplicationController

  # http://stackoverflow.com/questions/1177863/how-do-i-ignore-the-authenticity-token-for-specific-actions-in-rails
  skip_before_filter :verify_authenticity_token, only: [:create]

  def post
    # Take a look at these in your server logs
    # to get a sense of what you're dealing with.

    # puts "INCOMING PARAMS HERE: #{params}"

    sender = params['sender']
    subject = params['subject']
    body_plain = params["body-plain"]
    user = User.find_by_email(sender)
    id = user.id
    email = user.email

    if user.bookmarks.count > 0
      user_bookmarks = user.bookmarks
      titles = user.bookmarks.map { |bm| bm["title"] }

      if titles.include?(subject)
        user_bookmarks = user_bookmarks.find_by_title(subject)
        user_bookmarks.hotlists.create!(url: body_plain, user_id: id)
      else
        new_user_submission = user.bookmarks.create!({ title: subject, url: body_plain })
        new_user_submission.hotlists.create!(url: body_plain, user_id: id)
      end
    else
      new_submission = user.bookmarks.create!({ title: subject, url: body_plain })
      new_submission.hotlists.create!(url: body_plain, user_id: id)
    end
 

    # Assuming all went well. 
    head 200
  end
end