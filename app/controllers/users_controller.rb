class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]

 def index
    @users = User.all
  end

  def new
  end

  def create
    @user = User.new(
                    name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation]
                    )
    if @user.save
      UserMailer.welcome_email(@user).deliver_now
      session[:user_id] = @user.id 
      flash[:success] = "You have Created your Account"
      redirect_to '/'
    else
      p @user.errors.full_messages
      flash[:warning] = 'Invalid email or password'
      redirect_to '/sign_up'
    end
  end

  def show
    @user = User.find(params[:id])
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def edit
    @user = User.find(params[:id])
  end  
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(@user.id)
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    flash[:warning] = "User Destroyed"
    redirect_to "/"
  end

private
  
    def correct_user
      # .to_i converts values to integers here because params[:id] is a string
      # Without this current_user.id and params[:id] would never match
      if current_user.id != params[:id].to_i
        redirect_to root_url
      end
    end
    
    def user_params
      params.require(:user).permit(:bio)
    end
end