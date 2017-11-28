class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :birthday, :datetime
    add_column :users, :description, :string
    add_column :users, :picture, :string
    add_column :users, :dialects, :string
  end
end
