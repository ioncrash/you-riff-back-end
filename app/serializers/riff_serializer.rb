class RiffSerializer < ActiveModel::Serializer
  attributes :id, :text, :stamp, :flagged, :user, :video, :editable

  def editable
    scope == object.user
  end

  def video
    object.video.id
  end

  def user
    object.user.id
  end
end
