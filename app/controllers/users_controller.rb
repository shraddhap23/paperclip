class UsersController < ApplicationController
    
  def index
    @users = User.all
  end
    
  def new
    @user = User.new
  end
    
  def create
    @user = User.create(user_params)
    redirect_to users_path
  end
    
  def show
    @user = User.find(params[:id])
  end
    
  def edit
    @user = User.find(params[:id])
  end
    
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to :back
  end
    
  def user_params
    params.require(:user).permit(:fname, :lname, :avatar) 
  end

end
