class CheckoutsController < ApplicationController
  def new
  end

  def create
    @checkout = Checkout.new(checkout_params)
    @checkout.user_id = current_member.id
    @checkout.set_dates
    @checkout.subtract_tool_quantity
    if @checkout.save
      redirect_to tools_path
    else
      render :show
    end
  end

  def update
  end

  def edit
  end

  def destroy
    @checkout = Checkout.find(params[:id])
    @checkout.tool.return_tool(@checkout.quantity)
    @checkout.destroy
    redirect_to user_path
  end

  def index
  end

  def show
  end

  private

  def checkout_params
    params.require(:checkout).permit(:quantity, :tool_id)
  end
end
