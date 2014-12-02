class Checkout < ActiveRecord::Base
  has_many :tools
  has_many :users
end
