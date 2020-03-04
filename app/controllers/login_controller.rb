class LoginController < ApplicationController
  def create
    user = User.where(email: params.dig(:login, :email)).first

    if user&.authenticate(params.dig(:login, :password))
      session[:current_user_id] = user.id
      redirect_to '/home'
    else
      redirect_to '/login', notice: 'Username or password is incorrect'
    end
  end
end
