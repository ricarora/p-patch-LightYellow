class BlogpostsController < ApplicationController
  skip_before_filter :logged_in, only: [:index, :show]

  def index
    @blogposts = Blogpost.all
  end

  def new
    @blogpost = Blogpost.new
  end

  def create
    if current_member.admin
      @blogpost = Blogpost.new(params.require(:blogpost).permit(:title, :content))
      @blogpost.user_id = session[:current_member]
      if @blogpost.save
        redirect_to blogposts_path
      else
        render :new
      end
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end
end
