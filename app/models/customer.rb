class Customer < ActiveRecord::Base
  attr_accessible :address, :first_name, :last_name
end
