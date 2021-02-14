class ProductsUser < ApplicationRecord

  belongs_to :product
  belongs_to :user

  scope :not_verified, -> { where('checked': false) }
  scope :behind_expiration_date, -> (correct_check_day) { where(' created_at::date <= ? ' , correct_check_day) }

  def self.check_payment_validation

    User.all.each do | user |

      first_month_day = Date.today.at_beginning_of_month

      user_expiration_date = user.expiration_date
      
      correct_check_day = ( first_month_day + user_expiration_date )

      available_products = user.products_users.not_verified.behind_expiration_date( correct_check_day )

      today = Date.today

      
      if correct_check_day == today
        
        available_products.each do | product |

          product.update_attribute( :checked , true )
        
        end

      end
    
    end
  
  end

end
