class ReviewsController < ApplicationController
  def index
  end


  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
end
