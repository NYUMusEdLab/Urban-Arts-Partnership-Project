class SessionsController < ApplicationController
  def create
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.save!
    redirect_to root
  end
end
