class CreatePaymentMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_methods do |t|
      t.string :name,           limit: 255
      t.string :name_value,     limit: 255

      t.timestamps
    end
  end
end
