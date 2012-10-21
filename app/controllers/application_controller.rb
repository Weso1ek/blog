class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :categories

  protected

  def categories
    @categories = Category.all
  end
end
