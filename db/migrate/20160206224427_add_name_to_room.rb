class AddNameToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :name, :string
  end
end
