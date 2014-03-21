# == Schema Information
#
# Table name: artists
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  active_years :string(255)
#  biography    :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Artist < ActiveRecord::Base
  attr_accessible :active_years, :biography, :name
end
