class Relationship < ApplicationRecord
  
  belongs_to :end_user
  belongs_to :farmer
  
end
