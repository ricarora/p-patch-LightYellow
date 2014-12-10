class Checkout < ActiveRecord::Base
  belongs_to :tools
  belongs_to :users

  validates :checkout_date, :due_date, presence: true
end
