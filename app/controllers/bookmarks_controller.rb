class BookmarksController < ApplicationController

  skip_before_filter :verify_authenticity_token, only: [:create]

  def index
  end

  def create
    # Take a look at these in your server logs
    # to get a sense of what you're dealing with.
    puts "INCOMING PARAMS HERE: #{params}"

    # You put the message-splitting and buiness
    # magic here.

    #Assuming all went well.
    head 200
  end
end
