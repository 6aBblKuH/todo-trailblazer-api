# frozen_string_literal: true
module Api::V1
  class Project::Destroy < Trailblazer::Operation
    step :model!
    step :destroy!

    def model!(ctx, current_user:, params:, **)
      ctx[:model] = current_user.projects.find(params[:id])
    end

    def destroy!(ctx, model:, **)
      model.delete
    end
  end
end
