class HotlistsController < ApplicationController
  def index
    
    @hotlist_groups = Bookmark.all

    if params[:title]
      @hotlist_groups = @hotlist_groups.where(title: params[:title])
    end

    @hotlist_groups = @hotlist_groups.group_by { |h| h.title }
  end
end