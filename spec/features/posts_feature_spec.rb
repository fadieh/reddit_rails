require 'rails_helper'

feature 'posts' do

	context 'no posts have been added' do

		scenario 'should display a prompt to add a post' do
			visit '/posts'
			expect(page).to have_content('No Posts')
			expect(page).to have_link('Submit a new link')
		end

	end

	context 'posts have been added' do

		before do
			Post.create(title: 'Google')
		end

		scenario 'display posts' do
			visit '/posts'
			expect(page).to have_content('Google')
			expect(page).not_to have_content('No Posts')
		end

	end

end