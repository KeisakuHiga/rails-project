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
    @listing = Listing.new
    # @listing = current_user.listings.build
  end
  
  def show
      @listing = Listing.find(params[:id])
    end


  def create
    @listing = Listing.new(listing_params)
    # @listing = current_user.listings.build(listing_params)
    
    if @listing.save
      redirect_to @listing
    else
      render 'new'
    end
  end

  private
    def listing_params
      params.require(:listing).permit(:title, :description, :amount)
    end


end
