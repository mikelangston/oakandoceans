class Event < ActiveRecord::Base
  belongs_to :group
  has_many :venues
end
