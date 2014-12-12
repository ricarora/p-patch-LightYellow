class Checkout < ActiveRecord::Base
  belongs_to :tool
  belongs_to :user

  validates :checkout_date, :due_date, presence: true

  def set_dates
    self.checkout_date = Time.now
    self.due_date = Time.now + 7.days
  end

  def subtract_tool_quantity
    tool = Tool.find(self.tool_id)
    tool.quantity = tool.quantity - self.quantity
    tool.save
  end
end
