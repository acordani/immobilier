class SearchesController < ApplicationController

  def new
  @search = Search.new

end
def create
  @search = Search.create(search_params)
    respond_to do |format|
      format.html { redirect_to @search }
      format.js
    end

end
def show
  @search = Search.find(params[:id])
end


private
def search_params
   params.require(:search).permit(:locality, :bed, :min_price, :max_price, :address)
end


end
