class UsersController < ApplicationController
  before_filter :admin_user, only: [:index, :destroy]

  def index
    @users = User.all
  end

  def destroy 
    User.find(params[:id]).destroy
    redirect_to users_path
  end

  def new
  	@user =  User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save 
  		sign_in @user
  		redirect_to root_path
  		flash[:success] = "Thanks for signing up! Get ratin'"
  	else
  		render 'new'
  	end
  end

private


    def admin_user 
      redirect_to root_url unless signed_in? && current_user.admin?
    end


end
