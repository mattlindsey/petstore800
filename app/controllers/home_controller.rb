class HomeController < ApplicationController
  def index
    @pictures = Picture.all
    @articles = Article.all
    render :index
  end
end
