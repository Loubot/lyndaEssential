# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  invoice_number :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Order < ActiveRecord::Base
  attr_accessible :invoice_number
end
