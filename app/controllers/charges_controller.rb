class ChargesController < ApplicationController
  attr_accessor :amount, :pricetest
  def initialize()
    @amount = amount
    @pricetest = pricetest
  end

  def new
  end
  
  def create
    # Amount in cents. This amount will be charged.
    @listing = Listing.find(params[:listing_id])
    listing_amount = @listing.amount
    @offers = @listing.offers

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: amount,
      description: 'Rails Stripe customer',
      currency: 'usd',
    })
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
