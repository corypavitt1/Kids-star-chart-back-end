class StarSerializer < ActiveModel::Serializer
  attributes :id, :color, :url
  has_many :cks



end
