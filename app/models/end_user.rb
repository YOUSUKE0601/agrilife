class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image
  has_many :topic_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  has_many :relationships, dependent: :destroy
  
  has_many :rooms, dependent: :destroy
  has_many :chats, dependent: :destroy
  
  validates :name, presence: true
  

  
  def with_farmer_room(farmer)
    rooms = self.rooms.where(farmer_id: farmer.id)
    if rooms.present?
      return rooms.first
    end
    nil
  end
  

end
