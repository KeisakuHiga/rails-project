class OffersController < ApplicationController
  # def new
  #   @listing = Listing.find(params[:listing_id])
  #   @offer = @listing.offers.build
  #   respond_with(@offer)
  # end
  
  def create
    # @user = User.find(params[:id])
    # @user = User.find(24)
    @listing = Listing.find(params[:listing_id])
    @offer = @listing.offers.new(offer_params)
    @offer.user_id = current_user.id 
    
    if @offer.save
      flash[:notice] = "Your offer successfully saved!!!"
      redirect_to listing_path(@listing)

    else
      flash[:notice] = "NOOOOOO!!!"
      redirect_to listing_path(@listing)

    end
  end

  def edit
    @listing = Listing.find(params[:listing_id])
    @offer = @listing.offers.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:listing_id])
    @offer = @listing.offers.find(params[:id])
  
    if offer.update(offer_params)
      redirect_to @listing
    else
      render 'edit'
    end
    
  end

  def destroy
    @listing = Listing.find(params[:listing_id])
    @offer = @listing.offers.find(params[:id])
    @offer.destroy
    flash.notice = "Your offer successfully deleted!!!"
    redirect_to listing_path(@listing)
  end

  private
    def offer_params
      params.require(:offer).permit(:interest, :description)
    end

end
