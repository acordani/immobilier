# == Schema Information
#
# Table name: hearts
#
#  id          :integer          not null, primary key
#  announce_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_hearts_on_announce_id  (announce_id)
#  index_hearts_on_user_id      (user_id)
#

class Heart < ActiveRecord::Base
  belongs_to :announce
  belongs_to :user

  validates :user_id, uniqueness: { scope: :announce_id }
end
