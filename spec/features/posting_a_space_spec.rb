feature 'a user can post a space' do
  context 'no spaces have been added yet' do
   scenario 'page has post a space link' do
     visit '/'
     expect(page).to have_content 'no spaces yet...'
     expect(page).to have_link 'post a space'
   end
  end
end
