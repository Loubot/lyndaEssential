class PublicController < ApplicationController
  def list
  	@albums = Album.all
  end
end
