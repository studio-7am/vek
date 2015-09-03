class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :number
      t.string :slug
      t.string :name
      t.string :phone
      t.string :email
      t.string :other
      t.references :page, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
