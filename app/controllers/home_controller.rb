class HomeController < ApplicationController
  def index
    conn = Faraday.new(url: "https://api.github.com") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
    conn.headers["Authorization"] = "token #{User.first.oauth_token}"
    response = conn.get("/user")
    @person = JSON.parse(response.body)
  end
end

# "Authorization: token OAUTH-TOKEN"
# 'https://api.github.com'
