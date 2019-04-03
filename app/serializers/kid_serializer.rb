class KidSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_id
belongs_to :user
attributes :stars
attributes :chores
attributes :cks



end
