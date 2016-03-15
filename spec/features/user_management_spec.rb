feature 'User managment: ' do
  scenario 'Sign up' do
    visit '/'
    click_link "Sign Up"
    fill_in "Name", with: "John Smith"
    fill_in "Email", with: "test@ymail.com"
    fill_in "Password", with: "123secret"
    fill_in "Password confirmation", with: "123secret"
    click_button "Sign up"
    expect(page).to have_content "John Smith"
  end
end