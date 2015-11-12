class RemoveAgeFromProfile < ActiveRecord::Migration
  def change
    remove_column :profiles, :age
    remove_column :profiles, :birth_day
    remove_column :profiles, :birth_month
    remove_column :profiles, :birth_year
  end
end
