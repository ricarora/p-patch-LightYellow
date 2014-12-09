class BlogpostsController < ApplicationController
  skip_before_filter :logged_in, only: [:index, :show]
  before_filter :admin?, except: [:index, :show]
  
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
    @blogpost = Blogpost.find(params[:id])
  end

  private

  def admin?
    if !current_member.admin
      redirect_to root_path
    end
  end
end
