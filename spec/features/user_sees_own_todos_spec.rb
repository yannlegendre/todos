require 'rails_helper'

feature do
  scenario "doesn't see other todos" do
    Todo.create(email: 'nottoto@example.com', title: 'do stuff')

    sign_in_as "toto@example.com"
    expect(page).not_to have_css ".todos li", text: "do stuff"
  end
end
