class EntriesController < ApplicationController
  before_action :require_login

  def new
    @place = current_user.places.find_by(id: params["place_id"])
    if @place.nil?
      redirect_to "/places"
    end
  end

  def create
    @place = current_user.places.find_by(id: params["place_id"])
    if @place.nil?
      redirect_to "/places"
    else
      @entry = @place.entries.new
      @entry["title"] = params["title"]
      @entry["description"] = params["description"]
      @entry["occurred_on"] = params["occurred_on"]
      @entry["user_id"] = current_user.id
      @entry.save
      redirect_to "/places/#{@place.id}"
    end
  end
end
