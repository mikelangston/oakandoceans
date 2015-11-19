class RemoveGroupIdFromVenues < ActiveRecord::Migration
  def change
    remove_column :venues, :group_id, :integer
  end
end
