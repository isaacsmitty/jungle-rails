class ReviewsController < ApplicationController

  def show
    @product = Product.find params[:id]
    @review = Review.all
  end

end
