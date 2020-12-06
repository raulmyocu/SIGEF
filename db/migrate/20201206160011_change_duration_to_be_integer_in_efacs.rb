class ChangeDurationToBeIntegerInEfacs < ActiveRecord::Migration[6.0]
  def change
    change_column :efacs, :duration, :integer
  end
end
