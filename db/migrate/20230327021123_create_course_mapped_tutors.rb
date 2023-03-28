class CreateCourseMappedTutors < ActiveRecord::Migration[7.0]
  def change
    create_table :course_mapped_tutors do |t|
      t.integer :course_id
      t.integer :tutor_id

      t.timestamps
    end
  end
end
