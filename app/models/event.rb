# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  group_id   :integer
#  name       :string(255)
#  venue_id   :integer
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ActiveRecord::Base
  belongs_to :group
  has_one :venue, dependent: :destroy
  accepts_nested_attributes_for :venue

end
