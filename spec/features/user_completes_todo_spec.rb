require "rails_helper"

feature "User completes todo" do
  scenario "successfuly" do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Buy milk"
    click_on "Submit"
    click_on "Mark as done"

    expect(page).to have_css '.todos li.completed', text: "Buy milk"

  end
end
