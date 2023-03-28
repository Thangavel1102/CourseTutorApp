class CourseMappedTutor < ApplicationRecord
  belongs_to :course
  belongs_to :tutor
end
