class RiffSerializer < ActiveModel::Serializer
  attributes :id, :ytid, :text, :stamp, :flagged, :editable
  has_one :user

  def editable
    scope == object.user
  end
end
