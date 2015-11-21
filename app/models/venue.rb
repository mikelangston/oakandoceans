# == Schema Information
#
# Table name: venues
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  state          :string(255)
#  city           :string(255)
#  street_address :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  event_id       :integer
#

class Venue < ActiveRecord::Base
  belongs_to :event
end
