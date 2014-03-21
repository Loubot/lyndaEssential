class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :active_years
      t.text :biography

      t.timestamps
    end
  end
end
