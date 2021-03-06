class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title,              null: false
      t.string :image,              null: false
      t.integer :price
      t.string :url
      t.string :category,           null: false
      t.references :user,           foreign_key: true
      t.timestamps
    end
  end
end
