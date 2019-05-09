class User < ApplicationRecord
  has_many :chores
  has_many :kids

validates :username, uniqueness: true

  has_secure_password
end
