# == Schema Information
#
# Table name: searches
#
#  id         :integer          not null, primary key
#  locality   :string
#  bed        :integer
#  min_price  :integer
#  max_price  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  address    :string
#

class Search < ActiveRecord::Base



  def search_announces
    announces = Announce.all
     announces = announces.where("locality like ?", "%#{locality.chomp(", France")}%") if locality.present?
     announces = announces.where("bed >= ?", bed) if bed.present?
     announces = announces.where("price >= ?", min_price) if min_price.present?
     announces = announces.where("price <= ?", max_price) if max_price.present?

     return announces
    end
end
