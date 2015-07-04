module Account
  class AnnouncesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_announce, only: [:show, :edit, :update, :destroy]


    def index
      @announces = current_user.announces
    end

    def show

    end

    def new
      @announce = current_user.announces.new
    end

    def create
      @announce = current_user.announces.build(announce_params)
      @announce.address = params[:address]
      @announce.locality = params[:locality]
      if @announce.save
        flash[:notice] = "Votre bien a été ajouté"
        redirect_to account_announce_path(@announce)
      else
        flash[:alert] = "Quelquechose ne va pas."
        render :new
      end
    end

    def edit
    end

    def update
      @announce.update(params[:announce])
    end

    def destroy
      @announce.destroy
    end

    private

    def announce_params
    params.require(:announce).permit(:title, :property_id, :bed, :bath, :surface, :construction, :class_energy, :description, :tax_month, :latitude, :price, :longitude, :address, :locality, :picture1, :picture2, :picture3, :picture4)
  end

    def set_announce
    @announce = current_user.announces.find(params[:id])
  end
  end
end
