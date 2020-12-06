class AddSentToEfacs < ActiveRecord::Migration[6.0]
  def change
    add_column :efacs, :sent, :boolean
  end
end
