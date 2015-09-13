class CreateLombardOrders < ActiveRecord::Migration
  def change
    create_table :lombard_orders do |t|
      t.string :number
      t.string :slug
      t.string :name
      t.string :phone
      t.string :email
      t.references :lombard, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
