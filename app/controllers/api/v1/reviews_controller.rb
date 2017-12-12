module Api
  module V1
    class ReviewsController < ApplicationController
      def index
        @destination = Destination.find(params[:destination_id])
        @reviews = @destination.reviews
        json_response(@reviews)
      end
    end
  end
end
