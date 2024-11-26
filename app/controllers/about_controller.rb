class AboutController < ApplicationController
  def index
    @about_matt = {
      biography: "Matt is a (mostly retired) software developer with many interests.",
      hobbies: [ "Coding", "Reading", "Hiking", "Music", "Golf" ],
      achievements: [ "Career in Tech", "A couple of wonderful kids" ],
      contact_email: "matt@example.com",
      social_media_links: [ "https://twitter.com/matthewrlindsey", "https://github.com/mattlindsey" ]
    }
    render :index
  end
end
