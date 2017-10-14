class Subject < ApplicationRecord

  has_many :courses
  has_many :users
  belongs_to :department
  
end
