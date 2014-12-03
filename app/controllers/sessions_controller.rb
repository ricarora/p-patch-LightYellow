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
    else

    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end
end
