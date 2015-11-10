class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile_image
      t.string :screen_name
      t.integer :age
      t.integer :birth_day
      t.string :birth_month
      t.integer :birth_year

      t.timestamps null: false
    end
  end
end
