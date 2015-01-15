require 'rails_helper'

feature 'commenting' do
	let!(:google){ Post.create(title: 'Google', url: 'http://www.google.com')}

	scenario 'allows user to leave a comment using a form' do
		visit "/posts"
		click_link "Comment"
		fill_in "Thoughts", with: "So so"
		click_button 'Save'

		expect(current_path).to eq "/posts"
		expect(page).to have_content('So so')
	end

end
