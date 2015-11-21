# == Schema Information
#
# Table name: groups
#
#  id                       :integer          not null, primary key
#  user_id                  :integer
#  name                     :string(255)
#  description              :text(65535)
#  featured_image           :string(255)
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  location_id              :integer
#  featured_image_file_name :string(255)
#

require 'rails_helper'

RSpec.describe Group, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
