class FavoritesController < ApplicationController
  def index
    @favorites = [
      { title: "Favorite Book", description: "A great book that I love." },
      { title: "Favorite Movie", description: "An amazing movie that I enjoy." },
      { title: "Favorite Hobby", description: "A hobby that I am passionate about." }
    ]
    render :index
  end
end
