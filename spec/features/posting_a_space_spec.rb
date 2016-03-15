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
end
