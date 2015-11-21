# == Schema Information
#
# Table name: profiles
#
#  id            :integer          not null, primary key
#  first_name    :string(255)
#  last_name     :string(255)
#  profile_image :string(255)
#  screen_name   :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  birthday      :date
#  user_id       :integer
#

require 'rails_helper'

RSpec.describe Profile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
