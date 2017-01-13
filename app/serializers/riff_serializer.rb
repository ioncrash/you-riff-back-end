class RiffSerializer < ActiveModel::Serializer
  attributes :id, :ytid, :text, :stamp, :flagged
  has_one :user
end
