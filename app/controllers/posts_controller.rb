class PostsController < ApplicationController

	def index
		@post = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(post_params)
		redirect_to '/posts'
	end

	def post_params
		params.require(:post).permit(:title, :url)
	end

	def show
		@post = Post.find(params[:id])
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		flash[:notice] = 'Post deleted successfully'
		redirect_to '/posts'
	end

end
