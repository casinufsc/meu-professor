class Response < ApplicationRecord

  has_one :question
  
  belongs_to :user
  belongs_to :rating

end
