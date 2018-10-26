class CreateNewsItems < ActiveRecord::Migration[5.2]
  def change
    create_table :news_items do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.string :photolink
      t.string :videolink
      t.references :category, foreign_key: true
      t.references :subcategory, foreign_key: true

      t.timestamps
    end
  end
end
