require 'rails_helper'


feature "user can go to homepage" do

  scenario "user sees github info" do
    visit '/'

    expect(page).to have_css(".name")
    expect(page).to have_css(".nickname")

  end
end
