class PostsController < ApplicationController
  before_action :set_post, only:[:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only:[:new, :create]
  before_action :is_owner?, only: [:edit, :update, :destroy]

  def is_owner?
    if User.find(@post.user_id) != current_user
      redirect_to root_path
    end
  end



  def index
    @posts = Post.order('updated_at DESC').page(params[:page]).per(4)
  end


  def show
  end


  def edit
  end


  def update
    @post.update(post_params)
    redirect_to "/posts"
  end


  def new
    @post = Post.new
  end


  def create
    post = current_user.posts.create(post_params)
    redirect_to "/posts"
  end

 def destroy
    @post.destroy
    redirect_to "/posts"
  end


  private 

  def post_params    
    params.require(:post).permit(:title, :description, :image)
  end 

  def set_post
    @post= Post.find(params[:id])
  end


 
end
