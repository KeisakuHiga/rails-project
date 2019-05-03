class ChargesController < ApplicationController
  
  def new
  end
  
  def create
    # Amount in cents. This amount will be charged.
    @listing = Listing.find(params[:listing_id])
    listing_amount = @listing.amount

    @offers = @listing.offers
    offer = @offers.find(params[:offer_id])
    offer_interest = offer.interst
    offer_interest = offer.months
    @amount = listing_amount * interst_interest * months / 12
  
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'usd',
    })
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
