class User < ApplicationRecord

  has_many :course_teachers
  has_many :responses
  
  belongs_to :subject

end
