class UserSerializer < ActiveModel::Serializer
  attributes :username, :family_name, :id
  has_many :kids
  has_many :chores
  attributes :kids
  attributes :chores



end
