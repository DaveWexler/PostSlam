class PostsController < ApplicationController
  def new
  end

  def index
    Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.twitter = true
    @post.facebook = true
    @post.save
    flash[:notice] = "Post successfully created!"
    redirect_to root_path
  end


  private

  def post_params
    params.require("post").permit(:title, :body)
  end

end
