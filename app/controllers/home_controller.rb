class HomeController < ApplicationController

  def index
    @current_category = Category.where("name = ?", "first").first
    @main_posts = Post.where("category_id = ?", @current_category)  
  end
end
