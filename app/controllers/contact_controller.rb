class ContactController < ApplicationController
  def index
    @contact_info = {
      email: "matt@example.com",
      social_media_links: [
        { platform: "Twitter", url: "https://twitter.com/matt" },
        { platform: "GitHub", url: "https://github.com/matt" }
      ]
    }
    render :index
  end
end
