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

class Group < ActiveRecord::Base
  belongs_to :user
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
  has_one :location, dependent: :destroy
  has_many :events, dependent: :destroy
  accepts_nested_attributes_for :location
  mount_uploader :featured_image, FeaturedImageUploader

  validates :name, presence: true, uniqueness: true

  def since
    self.created_at.strftime("%B %d, %Y")
  end
end
