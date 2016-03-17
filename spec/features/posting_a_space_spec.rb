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

  context 'spaces have been added' do
    
    before do 
      create_user
      post_a_space
    end

      scenario 'page shows spaces', js: true do
        visit '/'
        expect(page).to have_content 'my hotel'
        expect(page).not_to have_content 'no spaces yet...'
      end
      
      scenario 'each space belongs to a user', js: true do
        click_link 'Requests'
        expect(page).to have_content 'my hotel'
      end
  

    context 'users are able to add a space' do
      scenario 'adding a space', js: true do
        within 'ul#spaces' do
          expect(page).to have_content 'Location: London'
          expect(page.find('.space_thumb')['src']).to have_content 'test.jpg'
        end
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

















