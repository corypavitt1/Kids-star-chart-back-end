class Star < ApplicationRecord
  has_many :cks
  has_many :chores, through: :cks
  has_many :kids, through: :cks


end
