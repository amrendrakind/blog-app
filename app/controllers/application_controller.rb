class ApplicationController < ActionController::Base
  # API
  before_action :authenticate_request, if: :json_request
  attr_reader :current_user
  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end

  def json_request
    request.format.json?
  end
  # Web
  protect_from_forgery with: :null_session, unless: :json_request

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name bio photo role])
  end
end
