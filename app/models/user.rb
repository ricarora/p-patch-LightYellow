class User < ActiveRecord::Base
  attr_accessor :password_signup
  has_many :blogposts
  has_many :authentications
  has_many :comments
  has_many :checkouts
  has_many :users, through: :checkouts

  with_options if: :local_signup? do |user|
    user.validates :name, :email, presence: true
    user.validates :username, :password, :password_confirmation, presence: true, on: :create
    user.validates :username, :email, uniqueness: { case_sensitive: false }, on: :create
    user.validates :password, length: { minimum: 8, maximun: 20 }, on: :create
    user.validates :password, confirmation: true
    user.validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
    has_secure_password validations: false
  end

  def local_signup?
    password_signup
  end

end
