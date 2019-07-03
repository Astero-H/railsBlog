class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  # def create
    
  # end

  # def show 
  #   @author = User.find(params[:author_id])
  #   @posts = @author.posts
  # end

end
