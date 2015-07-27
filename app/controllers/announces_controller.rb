class AnnouncesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @announces = Announce.all
    # if params[:locality]
    #   @announces = Announce.near(params[:locality].capitalize, 20)
    # else
      # @announces = Announce.all
    # end

      # @announces = Announce.near(params[:locality].capitalize, 20)
    if params[:locality] != nil && params[:locality] != ""
      @announces= Announce.where( "locality ILIKE ?", "%#{params[:locality].chomp(', France')}%")
      @announces = @announces.where("bed >= ?", params["bed"]) if params["bed"].present?
      @announces = @announces.where("price >= ?", params["min_price"]) if params["min_price"].present?
      @announces = @announces.where("price <= ?", params["max_price"]) if params["max_price"].present?
    else
      @announces = Announce.all
    end


    # @announces = @announces.where( "locality ILIKE ?", "%#{params[:locality]}%") if params["locality"].present?
    # @announces = @announces.where(bed: params["bed"]) if params["bed"].present?




    # @announces = Announce.search(params[:search])


    @markers = Gmaps4rails.build_markers(@announces) do |announce, marker|
      marker.lat announce.latitude
      marker.lng announce.longitude
      # marker.infowindow render_to_string(partial: "/announces/map_box", locals: { announce: announce })
    end
  end

  def show
    @announce = Announce.find(params[:id])
    # @announce_coordinates = { lat: @announce.latitude, lng: @announce.longitude }
    @markers = Gmaps4rails.build_markers(@announce) do |announce, marker|
      marker.lat announce.latitude
      marker.lng announce.longitude
      # marker.infowindow render_to_string(partial: "/announces/map_box", locals: { announce: announce })
    end


    @similar_announces = Announce.where("locality ILIKE ?", "%#{@announce.locality}%").where("bed >= ?", "#{@announce.bed}").where.not(id: @announce)

    # @similar_announces = Announce.where("bed >= ?", "#{@announce.bed}")

  end





  private

  def announce_params
    params.require(:announce).permit(:title, :property_id, :bed, :bath, :surface, :construction, :class_energy, :description, :tax_month, :latitude, :price, :longitude, :address, :locality, :picture1, :picture2, :picture3, :picture4)
  end


end
