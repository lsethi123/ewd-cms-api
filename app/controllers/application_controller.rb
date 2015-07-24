class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods
  include ActionController::Serialization
  include ActionController::ImplicitRender

  protected

  def authenticate_user!
    authenticate_from_token || render_unauthorized
  end

  def authenticate_from_token
    authenticate_with_http_token do |token, options|
      User.find_by_token(token)
    end
  end

  def render_unauthorized
    self.headers['WWW-Authenticate'] = 'Token realm="Application"'
    render status: 401, json: { message: "Unauthorized to access." }
  end
end
