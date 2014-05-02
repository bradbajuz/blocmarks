class BookmarksController < ApplicationController

  def index
    @bookmark = Bookmark.new
    @bookmarks = Bookmark.all
    @bookmarks = current_user.bookmarks
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

end
