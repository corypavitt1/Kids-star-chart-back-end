class KidSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_id, :stars
belongs_to :user
has_many :stars




end
