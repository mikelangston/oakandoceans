class Location < ActiveRecord::Base
  belongs_to :groups

  validates :city, presence: true
  validates :state, presence: true
  validates :postal_code, presence: true
end
