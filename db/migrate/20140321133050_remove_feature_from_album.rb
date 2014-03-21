class RemoveFeatureFromAlbum < ActiveRecord::Migration
  def up
    remove_column :albums, :feature
  end

  def down
    add_column :albums, :feature, :int
  end
end
