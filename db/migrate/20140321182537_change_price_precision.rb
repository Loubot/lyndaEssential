class ChangePricePrecision < ActiveRecord::Migration
  def up
    def up
    change_table :line_items do |t|
      t.change :price, :decimal, :precision => 10, :scale => 2
    end
  end
  end

  def down
  end
end
