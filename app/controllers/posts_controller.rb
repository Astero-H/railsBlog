class PostsController < ApplicationController


  def index
    @posts = Post.all
  end


  def show
    @post= Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post= Post.find(params[:id])
  end

  def update
    @post= Post.find(params[:id])  
    post_params = params.require(:post).permit(:title, :description)
    @post.update(post_params)
    redirect_to "/posts"
  end

end
