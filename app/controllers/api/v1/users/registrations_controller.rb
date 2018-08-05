module Api::V1::Users
  class RegistrationsController < DeviseTokenAuth::RegistrationsController
    protected

     def resource_params
      params.permit(:email, :password, :password_confirmation)
    end
  end
end
