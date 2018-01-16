class PostsController < ApplicationController
  def index
  	@post = Post.all
  end

  def new
  	@post = Post.new
  end
def create
  @post = Post.new(params.require(:post).permit(:title, :url))
  if @post.save
    redirect_to root_path
  else
    render "new"
  end
end
end
