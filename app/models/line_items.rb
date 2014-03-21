class LineItems < ActiveRecord::Base
  attr_accessible :album_id, :order_id, :price, :quantity
end
