class Event < ActiveRecord::Base
  belongs_to :group
  has_one :venue, dependent: :destroy
  accepts_nested_attributes_for :venue
end
