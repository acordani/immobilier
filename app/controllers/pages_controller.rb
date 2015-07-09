class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home

    # @announces_select = Announce.all.select { |f| f.picture1.exists? }.take(3)
    # @announces_select = Announce.where( "locality ILIKE ?", "%#{@slocality}%")

    @announces = Announce.all

    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@announces) do |announce, marker|
      marker.lat announce.latitude
      marker.lng announce.longitude
    end
  end

end
