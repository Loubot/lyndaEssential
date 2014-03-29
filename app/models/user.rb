# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'digest/sha1'
class User < ActiveRecord::Base
  attr_accessible :name, :password

  validates_presence_of :name, :password
  validates_uniqueness_of :name

  before_create :create_password
  after_create :destroy_password

  def create_password
  	self.hashed_password = User.hash_password(self.password)
  end

  def destroy_password
  	@password = nil
  end
  private #------------------------

  def self.hash_password(password)
  	Digest::SHA1.hexdigest(password)
  end
end
