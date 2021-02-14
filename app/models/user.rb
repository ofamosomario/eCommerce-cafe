class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {
  	'admin': 0,
  	'normal': 1,
  }
  
  validates_presence_of :full_name
  validates :expiration_date, allow_blank: false, numericality: { less_than_or_equal_to: 15,  only_integer: true }
  
  belongs_to :payment_method
  
  has_many :products_users
  has_many :products, through: :products_users

  before_save :normal_user_default

  def normal_user_default
    self.role = 'normal'
  end
      
end
