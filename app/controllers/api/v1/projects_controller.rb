# frozen_string_literal: true
require 'pry'

module Api::V1
  class ProjectsController < ApplicationController
    def create
      binding.pry
      # run Project::Create
      result = Project::Create.(params)

      @form = result["contract.default"]
    end

    def _run_options(options)
      options.merge('current_api_v1_user' => current_api_v1_user)
    end
  end
end
