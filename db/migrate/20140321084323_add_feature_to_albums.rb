class AddFeatureToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :feature, :int
  end
end
