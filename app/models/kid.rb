class Kid < ApplicationRecord
  has_many :cks
  has_many :chores, through: :cks
  has_many :stars, through: :cks
  belongs_to :user



end
