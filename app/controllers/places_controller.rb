class PlacesController < ApplicationController
  before_action :require_login

  def index
    @places = current_user.places
  end

  def show
    @place = current_user.places.find_by(id: params["id"])
    if @place.nil?
      redirect_to "/places"
    else
      @entries = @place.entries
    end
  end

  def new
  end

  def create
    @place = current_user.places.new
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end
end
