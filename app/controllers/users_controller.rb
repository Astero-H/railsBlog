class UsersController < ApplicationController

    # before_action :authenticate_user!
     before_action :load_user, only: [:show, :edit, :update]
     
    def index
      # if user_signed_in?
      #   @users = User.all.limit(30).order(:last_name)     
      # else 
      #   redirect_to('Login', new_user_session_path) 
      # end    
      
      @users = User.all
    end
  
    def show
       @user = User.find(params[:id])
       @posts = Post.where(user_id: params[:id]) 
    end
  
  
    def new 
      @user = User.new
    end 
  
    
    def create 
      user = User.new user_attributes
  
      if user.save
        redirect_to user
      else 
        render:new
      end
  
    end
  
    def edit 
    end 
  
  
  def update 
    @user.update user_attributes
    redirect_to :users
  end 
  
  
  def load_user
    @user = User.find(params[:id])
  end
  
  def user_attributes
    params[:user].permit(:first_name,:last_name)
  end 
  
  
  def destroy
    @user.destroy
    redirect_to :users
  end
  
  
  end
  