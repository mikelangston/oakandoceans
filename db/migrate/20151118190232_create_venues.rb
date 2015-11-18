class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :group_id
      t.string :name
      t.string :state
      t.string :city
      t.string :street_address

      t.timestamps null: false
    end
  end
end
