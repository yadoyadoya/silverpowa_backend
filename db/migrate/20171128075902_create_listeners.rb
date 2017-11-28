class CreateListeners < ActiveRecord::Migration[5.0]
  def change
    create_table :listeners do |t|
      t.references :recording, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
