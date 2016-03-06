class HeartsController < ApplicationController


def index
  @hearts = Heart.all
end

respond_to :js

def heart
  @user = current_user
  @announce = Announce.find(params[:announce_id])
  @user.heart!(@announce)
end

def unheart
  @user = current_user
  @heart = @user.hearts.find_by_announce_id(params[:announce_id])
  @announce = Announce.find(params[:announce_id])
  @heart.destroy!
end
end
