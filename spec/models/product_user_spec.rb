require 'rails_helper' 

describe ProductsUser do 
  
  it "creating a new product user" do
    
    payment = PaymentMethod.new( name: 'CreditCard' , name_value: 'CreditCardService' )
    payment.save

    product = Product.new( 
      title: 'Product 1',
      sub_title: 'Test',
      photo: 'products-01.jpg', 
      value: '15',
      description: 'Product Description' 
      )
    product.save
    
    user = User.new( 
        full_name: 'Mário Augusto Carvalho', 
        email: 'mario@gmail.com',
        payment_method_id: payment.id,
        password: '123123',
        password_confirmation: '123123',
        expiration_date: 15
      )
    user.save

    product_user = ProductsUser.new(
      user_id:  user.id,
      product_id: product.id,
      checked: false
    )

    expect(product_user).to be_valid 

  end
  
end