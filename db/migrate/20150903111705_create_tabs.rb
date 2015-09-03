class CreateTabs < ActiveRecord::Migration
  def change
    create_table :tabs do |t|
      t.string :title, default: 'Таб на странице'
      t.text :content, default: 'Контент'
      t.references :page, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
