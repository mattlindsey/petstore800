class BlogController < ApplicationController
  def index
    @articles = Article.all
    render :index
  end
end
