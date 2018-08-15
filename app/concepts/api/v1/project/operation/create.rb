# frozen_string_literal: true

class Project < ApplicationRecord
  class Create < Trailblazer::Operation
    Model(Project, :create)

    def process(params)
      binding.pry
      validate(params[:comment]) do
        contract.save
      end
    end
  end
end
