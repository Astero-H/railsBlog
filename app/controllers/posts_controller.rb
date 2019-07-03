class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show

  end 


  def create
    Post.create title: params[:title,:date,:description,:image,:user_id]
    redirect_to "/posts"
  end

  # def show 
  #   @author = User.find(params[:author_id])
  #   @posts = @author.posts
  # end

end
