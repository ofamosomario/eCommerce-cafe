class PaymentMethod < ApplicationRecord

  validates :name, length: { maximum: 225 }, allow_blank: false

  has_many :users

end
