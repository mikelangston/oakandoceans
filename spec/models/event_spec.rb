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

require 'rails_helper'

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
