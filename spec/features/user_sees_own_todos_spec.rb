require 'rails_helper'

feature do
  scenario "doesn't see other todos" do
    Todo.create(email: 'nottoto@example.com', title: 'do stuff')

    sign_in_as "toto@example.com"
    expect(page).not_to display_todo "do stuff"

  end
end
