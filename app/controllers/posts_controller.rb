class PostsController < ApplicationController

  def index 
    @posts = Post.all.order("created_at desc")
  end

  def create
    post = Post.new
    post["body"] = params["body"]
    post["user_id"] = current_user["id"]
    post.save
    redirect_to "/posts"
  end

end
