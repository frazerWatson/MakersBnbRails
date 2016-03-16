feature 'List spaces: ' do
  scenario 'all the spaces are listed' do
    visit '/'
    create_user
    post_a_space
    post_a_space("my cottage")
    expect(page).to have_content "my hotel"
    expect(page).to have_content "my cottage"
  end
  
    context 'user inputs into the search bar' do
      scenario 'only one space is listed' do
        visit '/'
        create_user
        post_a_space
        post_a_space("my cottage")
        fill_in "search", with: "hotel"
        expect(page).to have_content "my hotel"
        expect(page).not_to have_content "my cottage" 
    end
  end
end