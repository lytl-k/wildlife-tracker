class UsersController < ApplicationController
  def create
    user = User.new(user_params)

    if user.valid?
      user.save
      render '/login/index'
    else
      flash[:notice] = []
      user.errors.full_messages.each do |error|
        flash[:notice] << error
      end

      redirect_to '/sign_up'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
