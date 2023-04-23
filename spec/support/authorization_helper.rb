# frozen_string_literal: true

module AuthorizationHelper
  def sign_in(user)
    post api_v1_user_session_path(format: :json), params: { email: user.email, password: user.password }.to_json
    response.headers.slice('client', 'uid', 'token-type', 'access-token')
  end
end
