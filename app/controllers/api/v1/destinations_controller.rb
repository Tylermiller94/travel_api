module Api
  module V1
    class DestinationsController < ApplicationController

      def index
        city = params[:city]
        country = params[:country]
        if city
          @destinations = Destination.city_search(city)
        elsif country
          @destinations = Destination.country_search(country)
        else
          @destinations = Destination.all
        end
        json_response(@destinations)
      end

      def show
        @destination = Destination.find(params[:id])
        json_response(@destination)
      end

      def create
        @destination = Destination.create!(destination_params)
        json_response(@destination, :created)
      end

      def update
        @destination = Destination.find(params[:id])
        if @destination.update!(destination_params)
          render status: 200, json: {
            message: "Your destination has been updated successfully."
          }
        end
      end

      def destroy
        @destination = Destination.find(params[:id])
        @destiantion.destroy
      end


      private

      def json_response(object, status = :ok)
        render json: object, status: status
      end

      def destination_params
        params.permit(:country, :city)
      end
    end

  end
end
