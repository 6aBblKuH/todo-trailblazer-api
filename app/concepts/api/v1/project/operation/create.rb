# frozen_string_literal: true
module Api::V1
  class Project::Create < Trailblazer::Operation
    extend Representer::DSL

    step :model!
    step Contract::Build(constant: Project::Contract::Create)
    step Contract::Validate()
    step Contract::Persist()

    representer Project::Representer::Resource

    def model!(ctx, current_user:, **)
      ctx[:model] = current_user.projects.new
    end
  end
end
