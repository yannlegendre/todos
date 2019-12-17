require "rails_helper"

feature "User marks todo as undone" do
  scenario "successfuly" do
    sign_in

    create_todo('Buy milk')
    click_on "Mark as done"
    click_on "Mark as undone"

    expect(page).not_to display_completed_todo "Buy milk"
    expect(page).to display_todo "Buy milk"
  end
end
