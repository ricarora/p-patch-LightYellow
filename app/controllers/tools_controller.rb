class ToolsController < ApplicationController
  skip_before_filter :logged_in, only: [:index, :show]
  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    if @tool.save
      @tool.checkouts.create(user_id: current_member.id)
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @tools = Tool.all
    @tools.each{ |tool| tool.check_availability }
  end

  def show
    @tool = Tool.find(params[:id])
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :quantity)
  end
end
