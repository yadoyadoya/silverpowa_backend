class CreateRecordings < ActiveRecord::Migration[5.0]
  def change
    create_table :recordings do |t|
      t.references :user, foreign_key: true
      t.string :content
      t.integer :duration
      t.string :topic

      t.timestamps
    end
  end
end

