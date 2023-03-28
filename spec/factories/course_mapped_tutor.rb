FactoryBot.define do
    factory :course_mapped_tutor, class: CourseMappedTutor do
      course_id { course_1.id }
      tutor_id { tutor_1.id }
    end
end 