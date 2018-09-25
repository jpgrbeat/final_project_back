class AuthController < ApplicationController
  # sessions - no longer what we want to use
  # what is a session?
      # session[:user_id] = user.id # something
      # redirect

  skip_before_action :authenticate, only: [:login]

  def login
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      token = generate_token(user)
      render json: { token: token, user: { username: user.username, name: user.name ,description: user.description,img: user.img, id: user.id }}, status: 200
    else
      render "Failed", status: 404
    end
  end

end
