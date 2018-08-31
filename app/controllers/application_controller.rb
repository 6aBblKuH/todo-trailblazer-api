# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken

  private

  def _run_options(options)
    options.merge( "current_user" => current_api_v1_user )
  end
end
