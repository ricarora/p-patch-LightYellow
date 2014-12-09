class Checkout < ActiveRecord::Base
  belongs_to :tools
  belongs_to :users
end
