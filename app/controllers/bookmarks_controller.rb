class BookmarksController < ApplicationController

  def index
    @bookmark = Bookmark.new
    if params[:title]
      @bookmark_groups = current_user.bookmarks.where(title: params[:title]).group_by { |b| b.title }
    else
      @bookmark_groups = current_user.bookmarks.group_by { |b| b.title }
    end
  end

end
