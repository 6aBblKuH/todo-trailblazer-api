# frozen_string_literal: true

module Api::V1::Users
  class SessionsController < DeviseTokenAuth::SessionsController
    protected

    def resource_params
      params.permit(:email, :password)
    end
  end
end
