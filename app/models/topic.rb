class Topic < ApplicationRecord

  attachment :topic_image
  
  belongs_to :farmer
end
