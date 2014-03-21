class CreateAlbumsFeatures < ActiveRecord::Migration
  def change
    create_table :albums_features, :id => false do |t|
      t.references :album, :feature
    end

    add_index :albums_features, [:album_id, :feature_id],
      name: "albums_features_index",
      unique: true
  end
end
