class Room < ApplicationRecord
  
  has_many :chats, dependent: :destroy
  belongs_to :end_user
  belongs_to :farmer
  
end
