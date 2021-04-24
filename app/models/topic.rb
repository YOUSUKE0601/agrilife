class Topic < ApplicationRecord

  attachment :topic_image

  belongs_to :farmer
  has_many :topic_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  #引数で渡されたエンドユーザーidがFavoritesテーブルに存在するか
  def favorited_by?(end_user)
    favorites.where(end_user_id: end_user.id).exists?
  end
  
  validates :title, presence: true
  validates :body, presence: true
  validates :topic_image, presence: true


end
