class Product < ApplicationRecord

  validates_presence_of :title
  validates_presence_of :value
  validates_presence_of :description
  validates_presence_of :photo

  has_many :products_users
  has_many :users, through: :products_users

end
