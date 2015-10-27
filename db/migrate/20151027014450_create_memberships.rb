class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to :user
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
