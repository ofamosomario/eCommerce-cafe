require 'rails_helper'
require 'shared_contexts'

RSpec.describe ProductsController do

    let(:paymentMethod) { create(:paymentMethod) }
    let(:product) { create(:product) }

    let(:user) { create(
      :user, 
      full_name: 'TESTER',
      email: 'tester@gmail.com', 
      password: '123123',
      password_confirmation: '123123',
      role: 'normal',
      payment_method_id: paymentMethod.id,
      expiration_date: 15
      ) 
    }

  context "#create_order" do

    it 'should success return true to create an order' do
      
      sign_in user
      
      get :create_order , params: { product_id: product.id }
      expect(JSON.parse(response.body)["status"]).to eq(true)
  
    end

    it 'should error order without product_id' do

      sign_in user
      
      get :create_order , params: { product_id: nil }
      expect(JSON.parse(response.body)["status"]).to eq(false)

    end

    it 'should error order without user signed in' do

      get :create_order , params: { product_id: product.id }
      expect(JSON.parse(response.body)["status"]).to eq(false)

    end

  end


end