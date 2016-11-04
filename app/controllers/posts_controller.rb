class PostsController < ApplicationController
  def new
  end

  def index
    Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    byebug
    if post_params[:facebook] == "1"
      send_to_facebook
    end
    if post_params[:twitter] == "1"
      send_to_twitter
    end
    @post.save
    flash[:notice] = "Post successfully created!"
    redirect_to root_path
  end

  private

  def send_to_facebook
    # Adapter::Xapix::Facebook.new(post_params)
    # # if successful:
    # @post.facebook = true
  end

  def send_to_twitter
    # Adapter::Xapix::Twitter.new(post_params)
    # # if successful
    # @post.twitter = true
  end

  def post_params
    params.require("post").permit(:title, :body, :facebook, :twitter)
  end

end
