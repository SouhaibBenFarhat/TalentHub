class ApplicationController < ActionController::API
  respond_to :json
  rescue_from ActionController::RoutingError do |exception|
    routing_error_handler(exception)
  end
  rescue_from ActiveRecord::RecordNotFound do |exception|
    record_not_found(exception)
  end
  rescue_from StandardError do |exception|
    internal_error exception
  end


  def routing_error_handler(exception = nil)
    render json:   { error:       true,
                     message:     "#{request.url} not found on this server.",
                     description: exception&.message },
           status: :not_found
  end

  def record_not_found(exception)
    render json:   { error:       true,
                     message:     "Record not found",
                     description: exception.message },
           status: :not_found
  end

  def internal_error(exception)
    render json:   { error:       true,
                     message:     "Internal server error",
                     description: exception.message },
           status: :internal_server_error
  end

end
