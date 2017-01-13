class RiffSerializer < ActiveModel::Serializer
  attributes :id, :text, :stamp, :flagged, :user_id, :video_id, :editable

  def editable
    scope == object.user
  end
end
