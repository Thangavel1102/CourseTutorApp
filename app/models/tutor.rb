class Tutor < ApplicationRecord
    has_one :course_mapped_tutor
    has_one :course, through: :course_mapped_tutor
end
