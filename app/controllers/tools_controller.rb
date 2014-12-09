class ToolsController < ApplicationController
  skip_before_filter :logged_in, only: [:index, :show]
  def new
  end

  def create
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
