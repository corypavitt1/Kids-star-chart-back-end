class UserSerializer < ActiveModel::Serializer
  attributes :username, :family_name, :id, :kids
  has_many :kids
  has_many :chores

  



end
