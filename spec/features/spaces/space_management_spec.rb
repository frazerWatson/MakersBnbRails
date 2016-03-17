feature 'space validations' do
  context 'form needs to be correctly filled in' do
    it 'returns an error if field is blank', js: true do
      visit '/'
      click_link 'Sign In'
      sign_in
      click_link 'Post a space'
      fill_in 'Name', with: 'testname'
      fill_in 'Details', with: 'testdetails'
      click_button 'Create Space'
      expect(current_path).to eq '/spaces/new'
    end
  end
end
