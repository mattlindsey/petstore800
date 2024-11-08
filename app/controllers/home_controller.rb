class HomeController < ApplicationController
  def index
    @articles = Article.all
    @pictures = Picture.all
    @about_matt = {
      biography: "Matt is a software developer with a passion for technology.",
      hobbies: ["Coding", "Reading", "Hiking"],
      achievements: ["Built a successful app", "Published a book"],
      contact_email: "matt@example.com",
      social_media_links: ["https://twitter.com/matt", "https://github.com/matt"]
    }
    render :index
  end
end
