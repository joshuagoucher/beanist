class UsersController < ApplicationController
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
end
