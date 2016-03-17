feature 'a user can post a space' do
  context 'User logged in' do
    context 'no spaces have been added yet' do
      scenario 'page has post a space link', js: true do
        create_user
        visit '/'
        expect(page).to have_content 'no spaces yet...'
        expect(page).to have_link 'Post a space'
      end
    end
   end

    context 'users are able to add a space' do
      scenario 'adding a space', js: true do
        create_user
        visit '/'
        click_link 'Post a space'
        fill_in 'Name', with: 'my hotel'
        fill_in 'Location', with: 'London'
        fill_in 'Price', with: '100'
        attach_file "Image", Rails.root.to_s + "/spec/asset_specs/photo/test.jpg"
        fill_in 'Details', with: 'single bedroom with ensuite'
        fill_in 'Available from', with: Date.new(2016,03,15)
        fill_in 'Available to', with: Date.new(2016,03,15)
        click_button 'Create Space'
        within 'ul#spaces' do
          expect(page).to have_content 'Location: London'
          expect(page.find('.space_thumb')['src']).to have_content 'test.jpg'
        end
      end
    end

  context 'User not logged in' do
    scenario 'can\'t create a space', js: true do
      visit('/')
      click_link "Post a space"
      expect(page).to have_content('password')
      sign_in
      expect(page).not_to have_content('password')
    end
  end
end
