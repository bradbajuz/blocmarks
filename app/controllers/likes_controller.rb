class LikesController < ApplicationController

  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = current_user.likes.build(bookmark: @bookmark)
    authorize like

    if like.save
      flash[:notice] = "Liked blocmark"
      redirect_to hotlists_path
    else
      flash[:error] = "Unable to like. Please try again."
      render "hotlists/index"
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    @like = current_user.likes.find(params[:id])
    authorize @like

    if @like.destroy
      flash[:notice] = "Removed like."
      redirect_to hotlists_path
    else
      flash[:error] = "Unalbe to remove like, Please try agian."
      render "hotlists/index"
    end
  end
end
