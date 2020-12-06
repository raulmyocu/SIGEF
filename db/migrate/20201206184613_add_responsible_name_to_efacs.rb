class AddResponsibleNameToEfacs < ActiveRecord::Migration[6.0]
  def change
    add_column :efacs, :responsible_name, :string
  end
end
