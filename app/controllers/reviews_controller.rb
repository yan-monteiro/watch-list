class ReviewsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.find_or_create_by(list_id: @list.id)

    @review = @bookmark.reviews.build(review_params)

    if @review.save
      redirect_to list_path(@list)
    else
      render "lists/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
