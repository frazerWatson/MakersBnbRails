feature 'updating a space' do
  before do
    create_user
    post_a_space('testname')
  end

  it 'lets a user update a space', js: true do
    visit '/'
    click_link 'My Listings'
    click_link 'Edit This Space'
    fill_in 'name', with: 'newtestname'
    click_link 'make changes'
    expect(page).to have_content 'newtestname'
    expect(page).not_to have_content 'testname'
  end
end
