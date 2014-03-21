class AddPriceToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :price, :decimal(10,2)
  end
end
