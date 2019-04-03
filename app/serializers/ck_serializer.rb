class CkSerializer < ActiveModel::Serializer
  attributes :id, :star_id, :kid_id, :chore_id
  belongs_to :chore
  belongs_to :star
  belongs_to :kid
end
