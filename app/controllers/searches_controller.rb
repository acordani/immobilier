class SearchesController < ApplicationController


  def index
    @announces = Announce.all

  end

  def new
  @search = Search.new

end
def create
  @search = Search.create(search_params)
  redirect_to @search
    # respond_to do |format|
    #   format.html { redirect_to @search }
    #   format.js
    # end

end
def show
  @search = Search.find(params[:id])
end

def update
    @search = Search.find(params[:id])
     if @search.update(search_params)
       redirect_to @search
     else
       render :edit
     end
end

def edit
  @search = Search.find(params[:id])
end


private
def search_params
   params.require(:search).permit(:locality, :bed, :min_price, :max_price, :address)
end


end
