class AddStateToEfac < ActiveRecord::Migration[6.0]
  def change
    add_column :efacs, :state, :integer, :default => :editing
  end
end
