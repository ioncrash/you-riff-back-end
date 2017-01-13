class Riff < ActiveRecord::Base
  belongs_to :user
  validates :text, :user, :ytid, :stamp, presence: true
end
