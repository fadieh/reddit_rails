require 'rails_helper'

feature 'reviewing' do
	before {Post.create name: 'Google', url: 'http://www.google.com'}

	xscenario 'allows user to leave a comment using a form' do
		visit '/posts'
		click_link 'Comment'
		fill_in "Thoughts", with: "So so"
		click_button 'Save'

		expect(current_path).to eq '/posts'
		expect(page).to have_content('so so')
	end

end
