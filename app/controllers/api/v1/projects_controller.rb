# frozen_string_literal: true
require 'pry'
module Api::V1
  class ProjectsController < ApplicationController
    def create
      result = run Project::Create
      # binding.pry
      # representer = result['representer.default.class'].superclass
      # render json: representer.new(@model).to_json
    end
  end
end
