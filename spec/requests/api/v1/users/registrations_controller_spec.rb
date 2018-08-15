# frozen_string_literal: true

module Api::V1::Users
  describe RegistrationsController, type: :request do
    let(:user_params) { attributes_for(:user).stringify_keys }

    context 'successful sign up' do
      before do
        post api_v1_user_registration_path, params: { email: user_params['email'], password: '123456', password_confirmation: '123456' }
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'has created user' do
        expect(User.find_by(email: user_params['email'])).to be_truthy
      end
    end

    it 'creates a new user' do
      expect do
        post api_v1_user_registration_path, params: {
          email: user_params['email'],
          password: '123456',
          password_confirmation: '123456'
        }
      end.to change(User, :count).by(1)
    end
  end
end
