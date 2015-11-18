class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :group_id
      t.string :name
      t.integer :venue_id
      t.date :date

      t.timestamps null: false
    end
  end
end
