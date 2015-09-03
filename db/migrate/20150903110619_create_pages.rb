class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title, default: 'Заголовок страницы'
      t.string :description, default: 'Описание страницы'
      t.text :content, default: 'Контент на странице'
      t.boolean :publish, default: true
      t.string :cover, default: '/sample.jpg'
      t.string :icon, default: 'fa fa-page'
      t.string :bg, default: "#fafafa"

      t.timestamps null: false
    end
  end
end

