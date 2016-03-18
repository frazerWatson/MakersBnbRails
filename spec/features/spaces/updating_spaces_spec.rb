feature 'updating a space' do
  before do
    create_user
    post_a_space('testname')
  end

  it 'lets a user update a space', js: true do
    visit '/'
    click_link 'My Listings'
    click_link 'Edit This Space'
    fill_in 'Name', with: 'newname'
    click_button 'Update Space'
    expect(page).to have_content 'newname'
    expect(page).not_to have_content 'testname'
  end
end
