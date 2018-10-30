class UsersController < ApplicationController
  def index
  end

  def new
  	@user = User.new
  end

  def create

    if params[:user]
      @user = User.new 
      @user.username = params[:user][:username]
      @user.email = params[:user][:email]
      @user.bio = params[:user][:bio]
      @user.save
    else
      @user = User.new 
      @user.username = params['username']
      @user.email = params['email']
      @user.bio = params['bio']
      @user.save
    end

  end

  def team
  end

  def contact
  end
end
