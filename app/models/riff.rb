class Riff < ActiveRecord::Base
  belongs_to :user
  validates :text, :user, :ytid, :stamp, :flagged, presence: true
end
