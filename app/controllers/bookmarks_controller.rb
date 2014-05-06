class BookmarksController < ApplicationController

  def index
    @bookmark = Bookmark.new

    if params[:title]
      @bookmark_groups = current_user.bookmarks.where(title: params[:title]).group_by { |b| b.title }
    else
      @bookmark_groups = current_user.bookmarks.group_by { |b| b.title }
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    url = @bookmark.url

    if @bookmark.destroy
      flash[:notice] = "\"#{url}\" was deleted successfully."
      redirect_to bookmarks_path
    else
      flash[:error] = "There was an error deleting the bookmark."
      render "bookmarks/index"
    end
  end

end
