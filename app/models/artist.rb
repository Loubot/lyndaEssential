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
  validates_presence_of :name, :active_years, :biography
  validates_uniqueness_of :name
  has_many :albums, dependent: :destroy
end
