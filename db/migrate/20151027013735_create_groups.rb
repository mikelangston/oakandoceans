class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.belongs_to :user
      t.string :name
      t.text :description
      t.string :featured_image
      
      t.timestamps null: false
    end
  end
end
