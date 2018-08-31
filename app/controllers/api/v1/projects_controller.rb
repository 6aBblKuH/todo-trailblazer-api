# frozen_string_literal: true
module Api::V1
  class ProjectsController < ApplicationController
    def index
      run Project::Index
      render json: Project::Representer::Resource.for_collection.new(@model).to_json
    end

    def create
      run Project::Create
      render json: Project::Representer::Resource.new(@model).to_json
    end

    def update
      run Project::Update
      render json: Project::Representer::Resource.new(@model).to_json
    end

    def destroy
      run Project::Destroy
      render json: :ok
    end
  end
end
