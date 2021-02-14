require 'rails_helper' 

describe User do 

  it "required fields in new user" do
    
    payment = PaymentMethod.new( name: 'CreditCard' , name_value: 'CreditCardService' )
    payment.save
    user = User.new( 
        full_name: 'Mário Augusto Carvalho', 
        email: 'mario@gmail.com',
        payment_method_id: payment.id,
        password: '123123',
        password_confirmation: '123123',
        expiration_date: 15
      ) 
   
    expect(user).to be_valid 

  end

  it 'user must have full_name' do

    user = User.new(full_name: nil)
    user.valid?
    expect(user.errors[:full_name]).to include("can't be blank") 

  end

  it 'unique email' do
  
    payment = PaymentMethod.new( name: 'CreditCard' , name_value: 'CreditCardService' )
    payment.save

    user = User.create( 
      full_name: 'Mário Augusto Carvalho', 
      email: 'mario@gmail.com',
      payment_method_id: payment.id,
      password: '123123',
      password_confirmation: '123123',
      expiration_date: 15
    )

    user = User.create( 
        full_name: 'Mário Augusto Carvalho', 
        email: 'mario@gmail.com',
        payment_method_id: payment.id,
        password: '123123',
        password_confirmation: '123123',
        expiration_date: 15
      )

    user.valid?

    expect(user.errors[:email]).to include('has already been taken')

  end
  
end