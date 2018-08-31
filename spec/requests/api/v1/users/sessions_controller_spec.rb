# frozen_string_literal: true

module Api::V1::Users
  describe SessionsController, type: :request do
    let(:user) { create(:user) }

    context 'successful sign in' do
      before { login(user) }

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'gives you an authentication code if you are an existing user and you satisfy the password' do
        expect(response.has_header?('access-token')).to eq(true)
      end
    end
  end
end
