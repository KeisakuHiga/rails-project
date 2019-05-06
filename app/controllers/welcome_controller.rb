class WelcomeController < ApplicationController
  def index
    @listings = Listing.all
    @listings.each do |listing|
    end
  end
  def your
  end
end
