require 'rails_helper'

feature 'posts' do

	context 'no posts have been added' do

		scenario 'should display a prompt to add a post' do
			visit '/posts'
			expect(page).to have_content('No Posts')
			expect(page).to have_link('Submit a new link')
		end

	end

end