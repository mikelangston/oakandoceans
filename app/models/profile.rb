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

class Profile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :profile_image, ProfileUploader

  validates :first_name, :last_name, :screen_name, :birthday, :user_id, presence: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
