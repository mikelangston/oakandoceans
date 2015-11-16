class Group < ActiveRecord::Base
  belongs_to :user
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
  has_one :location, dependent: :destroy
  accepts_nested_attributes_for :location
  mount_uploader :featured_image, FeaturedImageUploader

  validates :name, presence: true, uniqueness: true

  def since
    self.created_at.strftime("%B %d, %Y")
  end
end
