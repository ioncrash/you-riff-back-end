class RiffSerializer < ActiveModel::Serializer
  attributes :id, :text, :stamp, :flagged, :editable
  has_one :user

  def editable
    scope == object.user
  end
end
