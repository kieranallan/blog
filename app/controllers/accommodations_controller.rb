class AccommodationsController < ApplicationController
  def index
    @accommodations = Accommodation.all
  end

  def show
    @accommodation = Accommodation.find(params[:id])
  end

  def new
    @accommodation = Accommodation.new
  end

  def create
    @accommodation = Accommodation.new(accommodation_params)

    if @accommodation.save
      redirect_to @accommodation
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @accommodation = Accommodation.find(params[:id])
  end

  def update
    @accommodation = Accommodation.find(params[:id])

    if @accommodation.update(accommodation_params)
      redirect_to @accommodation
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @accommodation = Accommodation.find(params[:id])
    @accommodation.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def accommodation_params
      params.require(:accommodation).permit(:title, :description, :persons)
    end
end
