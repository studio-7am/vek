class CreateLombardTabs < ActiveRecord::Migration
  def change
    create_table :lombard_tabs do |t|
      t.string :title
      t.text :content
      t.string :icon
      t.references :lombard, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
