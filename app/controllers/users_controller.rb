class UsersController < ApplicationController
  skip_before_filter :logged_in, only: [:new, :create, :signin]
  def new
    @user = User.new
  end

  def signin
  end

  def create
    @user = User.new(user_params)
    @user.password_signup = true
    if @user.save
      flash[:notice] = 'The User is successfully saved!'
      PpatchMailer.sign_up(@user.id).deliver
      session[:current_member] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    current_member.update(params.require(:user).permit(:name, :email))
    redirect_to user_path
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
    @posts = current_member.blogposts.reverse
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :username, :password, :password_confirmation)
  end
end
