# == Schema Information
#
# Table name: announces
#
#  id           :integer          not null, primary key
#  title        :string
#  bed          :integer
#  bath         :integer
#  surface      :integer
#  construction :integer
#  description  :text
#  tax_month    :integer
#  price        :integer
#  address      :string
#  locality     :string
#  class_energy :string
#  transports   :string
#  view         :string
#  exposition   :string
#  floor        :string
#  floor_max    :string
#  elevator     :boolean
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  property_id  :integer
#
# Indexes
#
#  index_announces_on_user_id  (user_id)
#

class Announce < ActiveRecord::Base
  belongs_to :user
end
