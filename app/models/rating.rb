class Rating < ApplicationRecord

  has_many :responses
  belongs_to :course_teacher
  belongs_to :semester

end
