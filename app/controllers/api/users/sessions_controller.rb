module Api
  module Users
    class SessionsController < Devise::SessionsController
      respond_to :json

      def new
        super
      end

    end
  end
end
