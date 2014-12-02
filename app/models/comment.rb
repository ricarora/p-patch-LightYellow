class Comment < ActiveRecord::Base
  belongs_to :blogpost
  belongs_to :user
  validates :content, length: {maximum: 400 }
end
