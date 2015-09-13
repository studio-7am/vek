class CreateStoreTabs < ActiveRecord::Migration
  def change
    create_table :store_tabs do |t|
      t.string :title
      t.text :content
      t.string :icon
      t.references :store, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
