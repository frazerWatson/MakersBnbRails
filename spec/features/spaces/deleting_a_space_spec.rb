feature 'delete a space' do

  before do 
    create_user
    post_a_space
  end

  scenario 'user can delete a space', js: true do
    visit '/'
    click_link 'My Listings'
    expect(page).to have_content 'my hotel'
    click_link 'Edit This Space'
    click_button 'Delete Space'
    expect(page).not_to have_content 'my hotel'
  end
end