class Account::PostsController < ApplicationController
  	before_action :authenticate_user!
  	def index
    	@posts = current_user.posts
  	end
  	def edit
  		@posts = Post.find(params[:id])
  	end
  	def update
  		@posts = Post.find(params[:id])
		if @posts.update(post_params)
			redirect_to account_posts_path, notice: "Update Success"
		else
			flash[:alert] = "Title can't blank."
			render :edit
		end
	end
	def destroy
		@posts = Post.find(params[:id])
	  	@posts.destroy
	  	flash[:alert] = "Post deleted"

		redirect_to account_posts_path
	end
	private
	def post_params
		params.require(:post).permit(:content)
	end
end