class Listing < ApplicationRecord
  belongs_to :user
  has_many :offers, dependent: :destroy

  def interest_amount
    result = 0
    offers.each do |offer|
      interest = offer.interest / 100
      months = offer.months
      result = amount * interest * months / 12
    end
    # raise
    return result
  end

end
