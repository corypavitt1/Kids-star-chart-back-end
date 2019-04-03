class User < ApplicationRecord
  has_many :chores
  has_many :kids



  has_secure_password
end
