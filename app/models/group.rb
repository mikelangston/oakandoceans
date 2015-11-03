class Group < ActiveRecord::Base
  belongs_to :user
  has_many :memberships
  has_many :users, through: :memberships
  has_attached_file :featured_image, styles: { medium: "400x400>", thumbnail: "160x160>" }
  has_one :location
  accepts_nested_attributes_for :location

  validates :name, presence: true, uniqueness: true
  validates_attachment_file_name :featured_image, matches: [/png\Z/, /jpe?g\Z/]

end
