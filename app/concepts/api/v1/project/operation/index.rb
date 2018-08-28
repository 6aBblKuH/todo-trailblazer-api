# frozen_string_literal: true
module Api::V1
  class Project::Index < Trailblazer::Operation
    step :model!

    def model!(ctx, current_user:, **)
      ctx[:model] = current_user.projects
    end
  end
end
