class SessionsController < ApplicationController
  def create
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.save!
    redirect_to root
  end
    
  def new 
    @user = User.new
    redirect_to "/shows"
    
  end
end
