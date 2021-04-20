class Chat < ApplicationRecord

  validates :message, presence: true
  belongs_to :room
  belongs_to :end_user, optional: true
  belongs_to :farmer, optional: true
end
