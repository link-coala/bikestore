class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.string :model
      t.string :image_url
      t.text :description
      t.text :rin
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
