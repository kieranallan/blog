class ReviewsController < ApplicationController
  def create
    @accommodation = Accommodation.find(params[:accommodation_id])
    @review = @accommodation.reviews.create(review_params)
    redirect_to accommodation_path(@accommodation)
  end
    
  private
    def review_params
    params.require(:review).permit(:reviewer, :body)
  end
end
