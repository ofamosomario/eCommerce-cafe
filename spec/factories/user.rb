FactoryBot.define do

  method = PaymentMethod.new(name: 'PIX' , name_value: 'PIX')
  method.save

  factory :user do

    full_name { 'TESTER' }
    email { 'tester@tester.com' }
    role { 0 }
    password { 123123 }
    password_confirmation { 123123 }
    payment_method_id { method.id }
    expiration_date { 15 }

  end

end