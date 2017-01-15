class VideoSerializer < ActiveModel::Serializer
  attributes :id, :ytid, :users, :riffs

  def riffs
    object.riffs.pluck(:id)
  end
end
