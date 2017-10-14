class CourseTeacher < ApplicationRecord

  has_many :ratings
  belongs_to :teacher
  belongs_to :course
  belongs_to :user

end
