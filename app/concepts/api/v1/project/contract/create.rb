module Api::V1
  module Project::Contract
    class Create < Reform::Form
      property :title

      validates :title, presence: true
    end
  end
end
