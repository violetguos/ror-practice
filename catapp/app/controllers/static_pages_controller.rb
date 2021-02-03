class StaticPagesController < ApplicationController
  def home
    @flickr = Flickr.new
    if params[:user_id]
      @params = {user_id: params[:user_id]}
      @photo = @flickr.photos.search(@params)
    end
  end

  def help
  end
end
