class Farmer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum region: {"北海道": 0, "東北": 1, "関東": 2, "中部": 3, "関西": 4, "中国・四国": 5, "九州・沖縄": 6 }

  enum category: {"野菜": 0, "果物": 1, "米・穀物": 2, "畜産": 3, "その他": 4 }

  attachment :profile_image
  attachment :farm_image

  has_many :topics, dependent: :destroy
  has_many :relationships, dependent: :destroy

  has_many :rooms, dependent: :destroy
  has_many :chats, dependent: :destroy
  
  validates :category, presence: true
  validates :farm_name, presence: true
  validates :name, presence: true
  validates :profile_image, presence: true
  validates :farm_image, presence: true
  validates :region, presence: true
  validates :postcode, presence: true
  validates :telephone_number, presence: true
  validates :introduction, presence: true
  validates :prefecture, presence: true
  validates :address, presence: true
  
  



  def followed_by?(end_user)
    relationships.where(end_user_id: end_user.id).exists?
  end


end
