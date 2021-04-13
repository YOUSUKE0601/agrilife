class Farmer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum region: {"北海道": 0, "東北": 1, "関東": 2, "中部": 3, "関西": 4, "中国・四国": 5, "九州・沖縄": 6 }

  enum category: {"野菜": 0, "果物": 1, "米・穀物": 2, "畜産": 3, "その他": 4 }

  attachment :profile_image
  attachment :farm_image



end
