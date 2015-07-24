class SessionsController < ApplicationController

  def create
    @user = User.find_by_email(user_params[:email])
    if @user && @user.authenticate(user_params[:password])
      give_user_token_to(@user)
    else
      render status: 401, json: { message: "Email or password are invalid." }
    end
  end

  def destroy
    @user = User.find_by_token(user_params[:token])
    if @user
      @user.token = nil
      @user.save
      render status: 200, json: { message: "Successfully logged out." }
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :token)
  end

  def give_user_token_to(user)
    user.set_user_token
    user.save
    render status: 200, json: { id: user.id, first_name: user.first_name, last_name: user.last_name, email: user.email, token: user.token }
  end
end
