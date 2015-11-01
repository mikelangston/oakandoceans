class Group < ActiveRecord::Base
  belongs_to :user
  has_many :memberships
  has_many :users, through: :memberships
  has_one :location
  accepts_nested_attributes_for :location
end
