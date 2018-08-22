require "reform"
module Api::V1
  module Project::Contract
    class Create < Reform::Form
      property :title
      property :user_id

      validates :title, presence: true
    end
  end
end
