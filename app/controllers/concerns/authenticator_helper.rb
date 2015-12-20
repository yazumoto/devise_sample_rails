module AuthenticatorHelper
  extend ActiveSupport::Concern

  def authenticate_user!
    token = request.headers['Access-Token']
    client = request.headers['Client']
    render json: nil, status: :unauthorized unless current_user && current_user.valid_token?(token, client)
  end

  private

  def current_user
    @current_user ||= begin
      uid = request.headers['Uid']
      User.find_by_uid(uid)
    end
  end
end
