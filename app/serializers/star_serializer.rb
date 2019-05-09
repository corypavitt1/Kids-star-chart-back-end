class StarSerializer < ActiveModel::Serializer
  attributes :id, :color, :url, :kids
  has_many :cks
  has_many :kids



end
