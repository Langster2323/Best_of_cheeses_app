class SessionsController < ApplicationController
  def login
    user = User.find_by(username: params[:username])
    if user.present? && user.authenticate(params.fetch(:password))
      render json: {authtoken: user.authtoken, user_id: user.id}, status: 200
    # render json: {authtoken: user.authtoken}
    else
      render json: { message: "Not found"}, status: 401
    end
  end
end
