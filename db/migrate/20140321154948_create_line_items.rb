class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.int :order_id
      t.int :album_id
      t.int :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
