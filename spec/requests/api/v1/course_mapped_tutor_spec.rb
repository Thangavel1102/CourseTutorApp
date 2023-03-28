require 'rails_helper'

RSpec.describe "Api::V1::CourseMappedTutors", type: :request do

  let(:course_1) { create(:course_1) }
  let(:course_2) { create(:course_2) }
  let(:course_3) { create(:course_3) }
  let(:tutor_1) { create(:tutor_1) }
  let(:tutor_2) { create(:tutor_2) }
  let(:tutor_3) { create(:tutor_3) }

  describe "POST /create" do

    context 'with valid parameters' do
      it "returns http success" do
        post '/api/v1/create', params: {
          course_mapped_tutor: {
            course_id: course_1.id,
            tutor_id: tutor_1.id
          }
        }
        response_body = JSON.parse(response.body)
        expect(response).to have_http_status(:created)
        expect(response_body['course_detail']['name']).to eq(course_1.name)
        expect(response_body['tutor_detail']['name']).to eq(tutor_1.name)
        expect(response_body['tutor_detail']['mail_id']).to eq(tutor_1.email_id)
      end
    end

    context 'with invalid parameters' do
      it "returns unprocessable_entity" do
        post '/api/v1/create', params: {
          course_mapped_tutor: {
            course_id: '',
            tutor_id: ''
          }
        }
        expect(response).to have_http_status(:unprocessable_entity)
      end

      context 'assign more than one to a tutor' do
        it 'return error' do
          course_mapped_tutor = create(:course_mapped_tutor, course_id: course_1.id, tutor_id: tutor_1.id)
          post '/api/v1/create', params: {
            course_mapped_tutor: {
              course_id: course_2.id,
              tutor_id: tutor_1.id
            }
          }
          response_body = JSON.parse(response.body)
          expect(response_body['error']).to eq('Tutor was already assigned with the course')
        end
      end
    end
  end

  describe "GET /index" do
    context 'List all course_mapped_tutor' do
      it "returns http success" do
        course_mapped_tutor_1 = create(:course_mapped_tutor, course_id: course_2.id, tutor_id: tutor_2.id)
        course_mapped_tutor_2 = create(:course_mapped_tutor, course_id: course_3.id, tutor_id: tutor_3.id)
        get '/api/v1/list'
        response_body = JSON.parse(response.body)
        expect(response).to have_http_status(:success)
        expect(response_body.size).to eq(2)
      end
    end
  end
end
