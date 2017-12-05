class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :gender, :integer
    add_column :users, :language, :string
    add_column :users, :avatar, :string
    add_column :users, :admin, :boolean, :default => false
    add_column :users, :phone, :string
  end
end
