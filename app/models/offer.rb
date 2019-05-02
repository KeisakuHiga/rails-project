class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_one :charge
end
