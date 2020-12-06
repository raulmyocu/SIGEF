class RemoveInstructorResumeeFromEfacs < ActiveRecord::Migration[6.0]
  def change
    remove_column :efacs, :instructor_resumee, :string
  end
end
