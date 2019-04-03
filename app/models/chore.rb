class Chore < ApplicationRecord
  belongs_to :user
  has_many :cks
  has_many :stars, through: :cks
  has_many :kids, through: :cks


end
