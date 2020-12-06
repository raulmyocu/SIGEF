class ChangeFeeToBeIntegerInEfacs < ActiveRecord::Migration[6.0]
  def change
    change_column :efacs, :fee, :integer
  end
end
