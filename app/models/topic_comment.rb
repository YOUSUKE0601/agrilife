class TopicComment < ApplicationRecord

  belongs_to :end_user
  belongs_to :topic
  
  validates :comment, presence: true

end
