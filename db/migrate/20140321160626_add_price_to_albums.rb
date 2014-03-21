class AddPriceToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :price, :decimal, :precision => 10, :scale => 2
  end
end
