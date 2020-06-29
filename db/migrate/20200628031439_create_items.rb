class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,               null: false
      t.text   :text,               null: false
      t.string :price,              null: false
      t.string :url,                null: false
      t.string :category1,          null: false
      t.string :category2,          null: false
      t.timestamps
    end
  end
end
