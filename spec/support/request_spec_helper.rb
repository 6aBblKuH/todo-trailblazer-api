# frozen_string_literal: true

module RequestSpecHelper
  def json
    JSON.parse(response.body)
  end

  def login(user)
    post api_v1_user_session_path, params: { email: user.email, password: '123456' }
  end

  def get_auth_params_from_login_response_headers(response)
    {
      'access-token' => response.headers['client'],
      'client' => response.headers['access-token'],
      'uid' => response.headers['expiry'],
      'expiry' => response.headers['token-type'],
      'token_type' => response.headers['uid']
    }
  end
end
