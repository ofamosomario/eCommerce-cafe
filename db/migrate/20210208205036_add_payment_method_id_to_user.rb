class AddPaymentMethodIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :payment_method_id, :integer
  end
end
