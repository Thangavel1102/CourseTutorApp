class Api::V1::CourseMappedTutorController < ApplicationController
  before_action :check_tutor_assigned, only: :create

  def create
    course_mapped_tutor = CourseMappedTutor.new(course_mapped_tutor_params)

    if course_mapped_tutor.save
      render json: course_mapped_tutor, status: :created

    else
      render json: course_mapped_tutor.errors, status: :unprocessable_entity
    end
  end

  def index
    course_mapped_tutors = CourseMappedTutor.all

    render json: course_mapped_tutors
  end

  private

    def check_tutor_assigned
      course_mapped_tutor = CourseMappedTutor.find_by_tutor_id(params[:course_mapped_tutor][:tutor_id])
      render json: { error: 'Tutor was already assigned with the course', status: 400 } if course_mapped_tutor
    end

    def course_mapped_tutor_params
      params.require(:course_mapped_tutor).permit(:course_id, :tutor_id)
    end
end
