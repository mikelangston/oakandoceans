class Profile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :profile_image, ProfileUploader

  validates :first_name, :last_name, :screen_name, :birthday, :user_id, presence: true
end
