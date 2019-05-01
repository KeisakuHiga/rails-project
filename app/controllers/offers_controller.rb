class OffersController < ApplicationController
  # def new
  #   @listing = Listing.find(params[:listing_id])
  #   @offer = @listing.offers.build
  #   respond_with(@offer)
  # end
  
  def create
    @listing = Listing.find(params[:listing_id])
    @offer = @listing.offers.create(offer_params)
    @offer.user_id = current_user.id 
    if @offer.save
      flash[:notice] = "Your offer successfully saved!!!"
      redirect_to listing_path(@listing.id)

    else
      flash[:notice] = "Saving failed"
      redirect_to listing_path(@listing.id)

    end
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
  
    if @offer.update(offer_params)
      redirect_to listing_path(@offer.listing_id)
    else
      render 'edit'
    end
    
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    flash.notice = "Your offer successfully deleted!!!"
    redirect_to listing_path(@offer.listing.id)
  end

  private
    def offer_params
      params.require(:offer).permit(:interest, :description)
    end

end
