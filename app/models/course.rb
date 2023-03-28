class Course < ApplicationRecord
  has_many :course_mapped_tutors
  has_many :tutors, through: :course_mapped_tutors
end
