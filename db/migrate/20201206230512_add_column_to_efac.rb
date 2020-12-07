class AddColumnToEfac < ActiveRecord::Migration[6.0]
  def change
    add_column :efacs, :reason, :string
  end
end
