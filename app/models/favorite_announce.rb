# == Schema Information
#
# Table name: favorite_announces
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FavoriteAnnounce < ActiveRecord::Base
end
