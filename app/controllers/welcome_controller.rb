class WelcomeController < ApplicationController
  def index
    @listings = Listing.all
    @listings.each do |listing|
    end
  end

  def your
  end

  def show

  end

  def offers
  end

  def about
  end
  
end
