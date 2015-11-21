# == Schema Information
#
# Table name: memberships
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  validates :user_id, :group_id, presence: true

  def joined
    self.created_at.strftime("%B %d, %Y")
  end
end
