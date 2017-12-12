module Api
  module V1
    class ReviewsController < ApplicationController
      def index
        @destination = Destination.find(params[:destination_id])
        @reviews = @destination.reviews
        json_response(@reviews)
      end

      def create
        @destination = Destination.find(params[:destination_id])
        @review = @destination.reviews.create!(review_params)
        json_response(@review, :created)
      end

      def update
        @destination = Destination.find(params[:destination_id])
        @review = Review.find(params[:id])
        if @review.update!(review_params)
          render status: 200, json: {
            message: "Your destination has been updated successfully."
          }
        end
      end

      def destroy
        @destination = Destination.find(params[:destination_id])
        @review = Review.find(params[:id])
        @review.destroy
      end


  private
      def review_params
        params.permit(:author, :content, :rating)
      end
    end
  end
end
