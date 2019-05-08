class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :listings, dependent: :destroy
  has_many :offers, dependent: :destroy
  validates :name, :dob, :account_number, :bsb, :driver_id, :mobile_number, :address, presence: true
  has_one_attached :avatar

end
