class SearchController < ApplicationController
  def index
    @results = Post.where("title LIKE ? OR description LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%").paginate(:page => params[:page] || 1)
  end
end

