# == Schema Information
#
# Table name: albums
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  release_date :datetime
#  genre        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  feature      :integer
#  image_path   :string(255)
#  artist_id    :integer
#

class Album < ActiveRecord::Base
  has_and_belongs_to_many :orders
  attr_accessible :artist, :genre, :release_date, :title, :artist_id
  validates_presence_of :release_date, :title, :genre
  validates_uniqueness_of :title
  belongs_to :artist
end
