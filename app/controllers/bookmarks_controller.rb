class BookmarksController < ApplicationController
  def index
    @bookmark = Bookmark.new
    @bookmarks = Bookmark.all
    @bookmarks = current_user.bookmarks
  end

private

  def bookmark_params
    params.require(:bookmark).permit(:title, :url)
  end
end
