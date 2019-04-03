class Ck < ApplicationRecord
  belongs_to :star
  belongs_to :chore
  belongs_to :kid

    

  accepts_nested_attributes_for :star


end
