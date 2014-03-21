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
  has_and_belongs_to_many :albums
  attr_accessible :invoice_number
  has_many :line_items
end
