module Features
  def sign_in
    sign_in_as('anything@example.com')
  end

  def sign_in_as(email)
    visit root_path
    fill_in "Email", with: 'email'
    click_on "Sign in"
  end
end


  #added line : config.include Features, type: :feature to rails helper
# and require './spec/support/features/sign_in.rb'
