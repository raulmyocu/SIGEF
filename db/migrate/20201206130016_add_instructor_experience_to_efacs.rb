class AddInstructorExperienceToEfacs < ActiveRecord::Migration[6.0]
  def change
    add_column :efacs, :instructor_experience, :string
  end
end
