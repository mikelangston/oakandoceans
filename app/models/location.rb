# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  city        :string(255)
#  state       :string(255)
#  postal_code :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  group_id    :integer
#

class Location < ActiveRecord::Base
  belongs_to :groups

  validates :city, presence: true
  validates :state, presence: true
  validates :postal_code, presence: true

  def city_state
    "#{self.city}, #{self.state}"
  end
end
