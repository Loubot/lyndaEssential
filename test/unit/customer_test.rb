# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  address    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
