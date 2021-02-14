class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string  :title              , limit: 60, null: false
      t.string  :sub_title          , limit: 255, null: false
      t.string  :photo              , limit: 255, null: false
      t.decimal :value              , null: false, precision: 8, scale: 2
      t.text    :description        , null: false

      t.timestamps
    end
  end
end
