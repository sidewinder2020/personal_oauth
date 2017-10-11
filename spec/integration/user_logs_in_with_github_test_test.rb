require "test_helper"

class UserLogsInWithGithubTest < ActionDispatch::IntegrationTest
  include Capybara::DSL
  def setup
    Capybara.app = OauthWorkshop::Application
  end

  test "logging in" do
    visit "/"
    assert_equal 200, page.status_code
  end
end
