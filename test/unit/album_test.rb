# == Schema Information
#
# Table name: albums
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  artist       :string(255)
#  release_date :datetime
#  genre        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  feature      :integer
#  image_path   :string(255)
#

require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
