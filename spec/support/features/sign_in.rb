module Features
  def sign_in
    visit root_path
    fill_in "Email", with: 'person@example.com'
    click_on "Sign in"
  end
end


  #added line : config.include Features, type: :feature to rails helper
# and require './spec/support/features/sign_in.rb'
