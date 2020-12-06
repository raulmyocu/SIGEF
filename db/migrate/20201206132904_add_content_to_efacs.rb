class AddContentToEfacs < ActiveRecord::Migration[6.0]
  def change
    add_column :efacs, :content, :string
  end
end
