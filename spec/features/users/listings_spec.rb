feature 'View Listings' do
  before do
    visit '/'
    click_link "Sign In"
    sign_in
    post_a_space
    post_a_space(name: "Apartment")
  end

  scenario 'User can view their listings', js: true do
    click_link "My Listings"
    expect(current_path).to eq('/user/listings')
    expect(page).to have_content('my hotel')
    expect(page).to have_content('Apartment')
  end
end
