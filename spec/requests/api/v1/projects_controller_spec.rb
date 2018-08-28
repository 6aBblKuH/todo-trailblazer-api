# frozen_string_literal: true
module Api::V1
  describe ProjectsController, type: :request do
    let(:user) { create(:user) }
    let(:headers) { user.create_new_auth_token }
    let(:project_params) { attributes_for(:project).stringify_keys }

    describe 'GET #index' do
      it 'returns projects' do
        create_list(:project, 3, user: user)
        get api_v1_projects_path, headers: headers
        expect(json['data'].size).to eq(3)
      end
    end

    context 'POST #create' do
      it 'creates project' do
        expect{ post api_v1_projects_path, headers: headers, params: attributes_for(:project).stringify_keys }.to change(::Project, :count).by(1)
      end

      it 'returns title' do
        attributes = attributes_for(:project).stringify_keys
        post api_v1_projects_path, headers: headers, params: attributes
        expect(json['data']['attributes']['title']).to eq(attributes['title'])
      end
    end

    context 'PATCH #update' do
      it 'updates project title' do
        project = create(:project, user: user)
        patch api_v1_project_path(project), headers: headers, params: { title: 'new title' }
        expect(user.projects.last.title).to eq('new title')
      end
    end

    context 'DELETE #destroy' do
      it 'deletes project' do
        project = create(:project, user: user)
        delete api_v1_project_path(project), headers: headers
        expect(user.projects).not_to include(project)
      end
    end
  end
end
