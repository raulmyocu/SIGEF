class AddNologsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nologs, :boolean
  end
end
