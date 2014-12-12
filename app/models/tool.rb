class Tool < ActiveRecord::Base
  has_many :checkouts
  has_many :users, through: :checkouts

  def check_availability
    if self.quantity <= 0
      self.available = false
      self.save
    else
      self.available = true
      self.save
    end
  end

  def return_tool(checkout_quantity)
    self.quantity += checkout_quantity
    self.save
  end
end
