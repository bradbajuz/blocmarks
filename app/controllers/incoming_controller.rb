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
 

    # Assuming all went well. 
    head 200
  end
end