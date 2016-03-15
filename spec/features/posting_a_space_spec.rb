feature 'a user can post a space' do
  context 'no spaces have been added yet' do
    scenario 'page has post a space link' do
      visit '/'
      expect(page).to have_content 'no spaces yet...'
      expect(page).to have_link 'post a space'
    end
  end

  context 'spaces have been added' do
    before do 
      Space.create(name: 'my hotel')
    end

    scenario 'page shows spaces' do
      visit '/'
      expect(page).to have_content 'my hotel'
      expect(page).not_to have_content 'no spaces yet...'
    end
  end

  context 'users are able to add a space' do
    scenario 'adding a space' do
      visit '/'
      click_link 'post a space'
      fill_in 'Name', with: 'my hotel'
      fill_in 'Location', with: 'London'
      fill_in 'Price', with: '100'
      attach_file "photo[image]", "spec/asset_specs/photo/Elephant.jpg"
      fill_in 'Details', with: 'single bedroom with ensuite'
      fill_in 'Available from', with: Date.new(2016,03,15)
      fill_in 'Available to', with: Date.new(2016,03,15)
      click_button 'Create Space'
      within 'ul#spaces' do
        expect(page).to have_content 'Location: London'
        expect(page).to have_selector("img")
      end
    end
  end
end
