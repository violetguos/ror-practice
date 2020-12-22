class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "merry christmas"
  end
end
