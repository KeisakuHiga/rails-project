class ListingsController < ApplicationController
  protect_from_forgery 
  def index
    @listings = Listing.all
  end

  def your
    @listings = Listing.all
  end

  def new
    @listing = current_user.listings.build
  end
  
  def show
    @listing = Listing.find(params[:id])

  end

  # def edit
  #   @listing = Listing.find(params[:id])
  # end

  def update
    @listing = Listing.find(params[:id])
    
    if @listing.update(listing_params)
      redirect_to @listing
    else
      render 'edit'
    end
  end

  def create
    # @listing = Listing.new(listing_params)
    @listing = current_user.listings.build(listing_params)
    
    if @listing.save
      redirect_to @listing
    else
      render 'new'
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
      
    redirect_to listings_path
  end

  private
    def listing_params
      params.require(:listing).permit(:title, :description, :amount)
    end


end
