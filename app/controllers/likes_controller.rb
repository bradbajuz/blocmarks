class LikesController < ApplicationController

  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = current_user.likes.build(bookmark: @bookmark)

    if like.save
      flash[:notice] = "Liked blocmark"
      redirect_to bookmarks_path
    else
      flash[:error] = "Unable to like. Please try again."
      render "bookmarks/index"
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    @like = current_user.likes.find(params[:id])

    if @like.destroy
      flash[:notice] = "Removed like."
      redirect_to bookmarks_path
    else
      flash[:error] = "Unalbe to remove like, Please try agian."
      render "bookmarks/index"
    end
  end
end
