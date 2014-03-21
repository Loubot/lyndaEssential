# == Schema Information
#
# Table name: line_items
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  album_id   :integer
#  quantity   :integer
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class LineItemsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
