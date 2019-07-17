class ReviewsController < ApplicationController
    before_action :review_params, only: [:create]

    def new
        @review = Review.new

    end

    def create
        @review = Review.new(review_params)
        #uopdate seller_id
        @review.seller_id = params:[:seller_id]
        #update buyer_id
        @review.buyer = current_user.profile.buyer

        @review.save
        
    end

    private

    def review_params
        params.require(:review).permit(:comment)
    end

end