require "rails_helper"

feature "User completes todo" do
  scenario "successfuly" do
    sign_in

    create_todo('Buy milk')
    click_on "Mark as done"

    expect(page).to display_completed_todo "Buy milk"
  end
end
