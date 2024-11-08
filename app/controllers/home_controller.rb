class HomeController < ApplicationController
  def index
    @pictures = Picture.all
    render :index
  end
end
