feature 'User managment: ' do
  scenario 'Sign Up' do
    create_user
    expect(page).to have_content "John Smith"
  end

  scenario 'Sign Out' do
    create_user
    click_link "Sign Out"
    expect(page).not_to have_content "John Smith"
    expect(page).to have_content "Signed out successfully."
  end

  scenario 'Sign In' do
    create_user
    click_link "Sign Out"
    click_link "Sign In"
    fill_in "Email", with: "test@ymail.com"
    fill_in "Password", with: "123secret"
    click_button "Sign In"
    expect(page).to have_content "John Smith"
  end 
end
