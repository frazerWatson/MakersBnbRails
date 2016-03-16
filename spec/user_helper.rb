def create_user
  visit '/'
  click_link "Sign Up"
  fill_in "Name", with: "John Smith"
  fill_in "Email", with: "test@ymail.com"
  fill_in "Password", with: "123secret"
  fill_in "Password confirmation", with: "123secret"
  click_button "Sign up"
end

def post_a_space(name = 'my hotel')
  click_link 'post a space'
  fill_in 'Name', with: name
  fill_in 'Location', with: 'London'
  fill_in 'Price', with: '100'
  attach_file "Image", "spec/asset_specs/photo/Elephant.jpg"
  fill_in 'Details', with: 'single bedroom with ensuite'
  fill_in 'Available from', with: Date.new(2016,03,15)
  fill_in 'Available to', with: Date.new(2016,03,15)
  click_button 'Create Space'
end
