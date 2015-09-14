class CreateSocials < ActiveRecord::Migration
  def change
    create_table :socials do |t|
      t.string :name
      t.string :icon
      t.string :url

      t.timestamps null: false
    end
  end
end
