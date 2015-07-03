# == Schema Information
#
# Table name: announces
#
#  id                    :integer          not null, primary key
#  title                 :string
#  bed                   :integer
#  bath                  :integer
#  surface               :integer
#  construction          :integer
#  description           :text
#  tax_month             :integer
#  price                 :integer
#  address               :string
#  locality              :string
#  class_energy          :string
#  transports            :string
#  view                  :string
#  exposition            :string
#  floor                 :string
#  floor_max             :string
#  elevator              :boolean
#  user_id               :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  property_id           :integer
#  latitude              :float
#  longitude             :float
#  picture1_file_name    :string
#  picture1_content_type :string
#  picture1_file_size    :integer
#  picture1_updated_at   :datetime
#  picture2_file_name    :string
#  picture2_content_type :string
#  picture2_file_size    :integer
#  picture2_updated_at   :datetime
#  picture3_file_name    :string
#  picture3_content_type :string
#  picture3_file_size    :integer
#  picture3_updated_at   :datetime
#  picture4_file_name    :string
#  picture4_content_type :string
#  picture4_file_size    :integer
#  picture4_updated_at   :datetime
#
# Indexes
#
#  index_announces_on_user_id  (user_id)
#

class Announce < ActiveRecord::Base

  belongs_to :user
  belongs_to :property

  validates :title, presence: true
  validates :property_id, presence: true
  validates :description, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  has_attached_file :picture1,
    styles: { medium: "300x300>", thumb: "100x100>" }
end
