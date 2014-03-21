class CreateAlbumsOrders < ActiveRecord::Migration
  def change
    create_table :albums_orders, :id => false do |t|
      t.references :album, :order
    end

    add_index :albums_orders, [:album_id, :order_id],
      name: "albums_orders_index",
      unique: true
  end
end
