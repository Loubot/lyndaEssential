# == Schema Information
#
# Table name: line_items
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  album_id   :integer
#  quantity   :integer
#  price      :decimal(10, 10)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LineItems < ActiveRecord::Base
  attr_accessible :album_id, :order_id, :price, :quantity
  belongs_to :album
  belongs_to :order
end
