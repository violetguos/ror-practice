class StaticPagesController < ApplicationController
  def home
    @flickr = Flickr.new
    if params[:user_id] && !params[:user_id].empty?
      @params = {user_id: params[:user_id], per_page: 20, page: 1}
      @photo = @flickr.photos.search(@params)
    elsif params[:content] && !params[:content].empty?
      @params = {text: params[:content], per_page: 20, page: 1}
      @photo = @flickr.photos.search(@params)
    end

  end

  def help
  end
end
