class CreateStoreOrders < ActiveRecord::Migration
  def change
    create_table :store_orders do |t|
      t.string :number
      t.string :slug
      t.string :name
      t.string :phone
      t.string :email
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
