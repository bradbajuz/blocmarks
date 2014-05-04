class HotlistsController < ApplicationController
  def index
    
    if params[:title]
      @hotlist_groups = current_user.bookmarks.where(title: params[:title]).group_by { |h| h.title }
    else
      @hotlist_groups = current_user.bookmarks.group_by { |h| h.title }
    end
  end

end
