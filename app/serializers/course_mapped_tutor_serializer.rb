class CourseMappedTutorSerializer < ActiveModel::Serializer
  attributes :id, :course_detail, :tutor_detail

  def course_detail
    course = object.course
    {
      name: course.name,
      description: course.description,
      price: course.price
    }
  end

  def tutor_detail
    tutor = object.tutor
    {
      name: tutor.name,
      mail_id: tutor.email_id
    }
  end
end
