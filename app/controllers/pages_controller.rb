class AnnouncesController < ApplicationController

  def index

    @announces_select = Announce.all.select { |f| f.picture1.exists? }.take(3)
    # @announces_select = Announce.where( "locality ILIKE ?", "%#{@slocality}%")


  end


end
