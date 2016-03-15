feature 'User managment: ' do
  scenario 'Sign Up' do
    create_user
    expect(page).to have_content "John Smith"
  end

  scenario 'Sign Out' do
    create_user
    click_link "Sign Out"
    expect(page).not_to have_content "John Smith"
    expect(page).to have_content ""
  end
end
