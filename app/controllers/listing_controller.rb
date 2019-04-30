class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def new

  end
  
  def show
      @listing = Listing.find(params[:id])
  end

  def new
    @listing = current_user.listings.build
  end
  
  def show
      @listing = Listing.find(params[:id])
    end


  def create
    @listing = current_user.listings.build(listing_params)
      
      @listing.save
      redirect_to @listing
    end

    private
    def listing_params
      params.require(:listing).permit(:title, :text)
    end


end
