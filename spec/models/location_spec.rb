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

require 'rails_helper'

RSpec.describe Location, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
