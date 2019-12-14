require 'rails_helper'

feature "Users creates todo" do
  scenario "successfully" do
    sign_in # defined in support/features/sign_in
    # visit root_path
    click_on "Add a new todo"
    fill_in "Title", with: "Buy milk"
    click_on "Submit"

    expect(page).to have_css '.todos li', text: "Buy milk"
  end
end
