feature 'Requests: ' do

  before do
    user = User.create(name: "John Smith", email: 'test@ymail.com', password: '123secret')
    user2 = User.create(name: "Matt Smith", email: 'test2@ymail.com', password: '123secret')
    space = user.spaces.create(name: 'my hotel', location: "London", price: 100, available_from: "", available_to: "", details: "")
    request = space.requests.create(user_id: user2.id, space_name: "my hotel")
    login_as(user2)
  end
  
  scenario 'Users can see requests they have made', js: true do
    visit '/'
    click_link 'Requests'
    expect(page).to have_content 'my hotel'
  end
end