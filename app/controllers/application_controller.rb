class ApplicationController < ActionController::API
  include Response

  rescue_from ActiveRecord::RecordNotFound do |exception|
    json_respone({ messageL exception.nessage }, :not_found)
  end
end
