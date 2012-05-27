class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :username, :email, :name, :password, :password_confirmation

  validates_uniqueness_of :email, :username
end
