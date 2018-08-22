# frozen_string_literal: true

module Api::V1
  class ProjectsController < ApplicationController
    def create
      # result = run Project::Create
      result = Project::Create.(params: project_params)

      # @form = result["contract.default"]
    end

    def project_params
      params.merge(user_id: current_api_v1_user).permit(:title, :user_id)
    end
  end
end
