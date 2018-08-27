# frozen_string_literal: true

module Api::V1
  describe ProjectsController, type: :request do
    let(:user) { create(:user) }
    let(:headers) { user.create_new_auth_token }
    let(:project_params) { attributes_for(:project).stringify_keys }

    context 'POST #create' do
      it 'creates project' do
        expect{ post api_v1_projects_path, headers: headers, params: attributes_for(:project).stringify_keys }.to change(::Project, :count).by(1)
      end

      it '' do
        post api_v1_projects_path, headers: headers, params: attributes_for(:project).stringify_keys
        binding.pry
      end
    end
  end
end
