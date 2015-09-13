class CreateLombards < ActiveRecord::Migration
  def change
    create_table :lombards do |t|
      t.string :name, default: 'Ломбард'
      t.string :description, default: 'Описание ломбарда' 
      t.string :content, default: 'Контент в ломбарде'
      t.string :image, default: '/lombard.jpg'

      t.timestamps null: false
    end
  end
end
