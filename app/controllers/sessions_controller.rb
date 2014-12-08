class SessionsController < ApplicationController
  def new
  end

  def current_member
    User.find_by(username: params[:user][:username])
  end

  def create
    if params[:provider] == "internal"
      if current_member && current_member.authenticate(params[:user][:password])
      session[:current_member] = current_member.id
      else
        render :new
      end
    elsif params[:provider] == "twitter"
      twitter_auth
    else

    end
  end

  def update
  end

  def edit
  end

  def destroy
    session[:current_member] = nil
    redirect_to root_path
  end

  def index
  end

  def show
  end

  private

  def twitter_auth
    auth_hash = request.env["omniauth.auth"]
    login = Authentication.where(uid: auth_hash[:uid], provider: auth_hash[:provider])
    if login.empty?
      user = User.new(username: auth_hash[:info][:nickname])
      user.password_signup = false
      user.save
      Authentication.create(uid: auth_hash[:uid], provider: auth_hash[:provider], user_id: user.id)
      session[:current_member] = user.id
    else
      session[:current_member] = login[0].user_id
    end
  end
end
