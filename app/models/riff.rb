class Riff < ActiveRecord::Base
  belongs_to :user, inverse_of: :riffs
  belongs_to :video, inverse_of: :riffs
  validates :text, :user, :stamp, :video, presence: true
end
