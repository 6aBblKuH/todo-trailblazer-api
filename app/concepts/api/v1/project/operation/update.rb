# frozen_string_literal: true
module Api::V1
  class Project::Update < Trailblazer::Operation
    step :model!
    step Contract::Build(constant: Project::Contract::Create)
    step Contract::Validate()
    step Contract::Persist()

    def model!(ctx, current_user:, params:, **)
      ctx[:model] = current_user.projects.find(params[:id])
    end
  end
end
