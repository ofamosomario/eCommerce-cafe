class CreateProductsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :products_users do |t|
      t.integer :user_id      , null: false
      t.integer :product_id   , null: false
      t.boolean :checked      , default: false

      t.timestamps
    end
  end
end
