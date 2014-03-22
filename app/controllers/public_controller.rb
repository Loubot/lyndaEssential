class PublicController < ApplicationController
  def list
  	@albums = Album.all(:order => 'title ASC')
  end
end
