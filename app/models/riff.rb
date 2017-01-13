class Riff < ActiveRecord::Base
  belongs_to :user
  validates :text, :user, :stamp, presence: true
end
