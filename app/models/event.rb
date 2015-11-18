class Event < ActiveRecord::Base
  belongs_to :group
  has_many :venues
  accepts_nested_attributes_for :venue
end
