class Video < ActiveRecord::Base
  validates :ytid, presence: true
  has_many :users, through: :riffs
  has_many :riffs
end
