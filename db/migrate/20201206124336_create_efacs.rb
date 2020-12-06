class CreateEfacs < ActiveRecord::Migration[6.0]
  def change
    create_table :efacs do |t|
      t.string :name
      t.string :modality
      t.string :objectives
      t.string :content_type
      t.string :eval_method
      t.string :duration
      t.string :resources
      t.string :references
      t.string :utility
      t.string :participation_requirements
      t.string :acreditation_requirements
      t.string :operative_conditions
      t.string :resources_availability
      t.string :fee
      t.string :instructor_name
      t.string :instructor_resumee

      t.timestamps
    end
  end
end
