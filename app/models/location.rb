class Location < ActiveRecord::Base
  belongs_to :groups

  validates :city, presence: true
  validates :state, presence: true
  validates :postal_code, presence: true

  def city_state
    "#{self.city}, #{self.state}"
  end
end
