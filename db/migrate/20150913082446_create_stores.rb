class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name, default: 'Магазин'
      t.string :description, default: 'Описание магазина'
      t.string :content, deault: 'Контент в магазине'
      t.string :image, default: '/store.jpg'

      t.timestamps null: false
    end
  end
end
