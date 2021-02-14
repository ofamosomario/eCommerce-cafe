class GeneralOrderService

  def self.handdle_orders connector_class_name , current_user , product

    begin
      
      if connector_class_name.check
        
        if register_user_order product , current_user
          
          true
        
        else
          
          false
        
        end

      end

    rescue

      false

    end

  end

  def self.register_user_order product , current_user

    product_user = current_user.products_users.build( product_id: product.id , checked: false )
    
    if product_user.save

      true

    else

      false

    end

  end

end