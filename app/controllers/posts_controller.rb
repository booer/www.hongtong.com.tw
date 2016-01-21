class PostsController < ApplicationController
	def index
		if session[:lang] == 'cn'
			@posts = Post.where(lang: true)
		else
			@posts = Post.where(lang: false)
		end
	end
	def show
		@post = Post.find(params[:id])
	end
end