module Api::V1
  module Project::Representer
    class Resource < Roar::Decorator
      include Roar::JSON::JSONAPI.resource :projects

      attributes do
        property :title
      end
    end
  end
end
