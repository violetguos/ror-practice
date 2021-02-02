class PhotosController < ApplicationController
  require 'flickr'
  before_action :set_photo, only: %i[show edit update destroy]

  # GET /photos or /photos.json
  def index
    @flickr = Flickr.new(ENV['FLICKR_API_KEY'], ENV['FLICKR_SHARED_SECRET'])
    # (ENV['flickr_api_key'], ENV['flickr_api_secret'])
    @photos = Photo.all
    # @photos = @flickr.photos.search(ENV['FLICKR_API_KEY'], 'me', { text: 'cat' })
  end

  # GET /photos/1 or /photos/1.json
  def show; end

  # GET /photos/new
  def new
    # @flickr = Flickr.new(ENV['FLICKR_API_KEY'], ENV['FLICKR_SHARED_SECRET'])
    # @photo =  @flickr.photos.search(user_id: params[:user_id])
    @photo = Photo.new
  end

  # GET /photos/1/edit
  def edit; end

  # POST /photos or /photos.json
  def create
    # @photo = Photo.new(photo_params)
    @flickr = Flickr.new(ENV['FLICKR_API_KEY'], ENV['FLICKR_SHARED_SECRET'])
    @photo =  @flickr.photos.search(user_id: params[:photo][:user_id])
    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photos/1 or /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1 or /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to photos_url, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_photo
    @photo = Photo.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def photo_params
    params.require(:photo).permit(:user_id)
  end
end
