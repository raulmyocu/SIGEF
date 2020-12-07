class AddInstanceToEfacs < ActiveRecord::Migration[6.0]
  def change
    add_column :efacs, :instance_id, :integer
    add_index :efacs, :instance_id
  end
end
