class ErrorsController < ApplicationController

  def catch_four_o_four
    raise ActionController::RoutingError.new("#{params[:path]} not found.")
  end

end
