class UsersController < ApplicationController

  def new
    
  end

  def create
    user = User.new(
                    name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation]
                    )
    if user.save
      sessions[:user_id] = user.id 
      flash[:success] = "You have Created your Account"
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password'
      redirect_to '/sign_up'
  end
end
