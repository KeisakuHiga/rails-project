class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_one :charge, dependent: :destroy

  def interest_amount
  @amount = (listing_amount * offer_interest * offer_month / 12).to_i
  end

end
