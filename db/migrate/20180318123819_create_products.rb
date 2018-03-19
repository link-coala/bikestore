class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :model
      t.string :image_url
      t.text :description
      t.text :rin
      t.decimal :price

      t.timestamps
    end
  end
end
