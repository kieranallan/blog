class AccommodationsController < ApplicationController
  def index
    @accommodations = Accommodation.all
  end

  def show
    @accommodation = Accommodation.find(params[:id])
  end
end
