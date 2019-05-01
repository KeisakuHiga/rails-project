class OffersController < ApplicationController

  def create
    @listing = Listing.find(params[:listing_id])
    @offer = @listing.offers.create(offer_params)
    flash[:notice] = "Your offer successfully saved!!!"
    redirect_to listing_path(@listing)
  end

  private
    def offer_params
      params.require(:offer).permit(:interest, :description)
    end

end
