class AlbumsController < ApplicationController
  MoneyRails.configure do |config|

  # set the default currency
  config.default_currency = :eur

end

  def index
    @albums = Album.all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @albums }
    end
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @album = Album.find(params[:id])
    @artist = Artist.find(@album.artist_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album }
    end
  end

  # GET /albums/new
  # GET /albums/new.json
  def new
    @album = Album.new
    @artists = Artist.all
    @features = Feature.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @album }
    end
  end

  # GET /albums/1/edit
  def edit
    @album = Album.find(params[:id])
    @artists = Artist.all
    @features = Feature.all
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(params[:album])
    @features = Feature.all
    for featureID in params[:features]
      @album.features << Feature.find(featureID)
    end
    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.json { render json: @album, status: :created, location: @album }
      else
        format.html { render action: "new" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /albums/1
  # PUT /albums/1.json
  def update
    @album = Album.find(params[:id])
    @features = Feature.all
    selected_features = []
    for featureID in params[:features]
      feature = Feature.find(featureID)
      unless @album.features.include?(feature)
        @album.features << feature
      end
      selected_features << feature
    end
    deleted_features = @album.features - selected_features
    for feature in deleted_features
      @album.features.delete(feature)
    end
    respond_to do |format|
      if @album.update_attributes(params[:album])
        format.html { redirect_to @album, notice: 'Album was successfully updated.' }
        format.json { head :no_content }
      else
        @artists = Artist.all
        format.html { render action: "edit" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
    
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    respond_to do |format|
      format.html { redirect_to albums_url }
      format.json { head :no_content }
    end
  end
end
