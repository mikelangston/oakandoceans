class AddFeaturedImageFileNameToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :featured_image_file_name, :string
  end
end
