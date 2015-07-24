class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      render status: 201, json: { user: { message: "Successfully signed up! You can now log in." } }
    else
      render status: 400, json: { user: { message: "Bad credentials." } }
    end
  end

  def show
    @user = User.find(params[:id])
    render status: 200, json: @user
  end

  def update
    @user = User.find(params[:id]).update(user_params)
    if @user
      render status: 200, json: { user: { message: "Successfully edited your profile!" } }
    else
      render status: 400, json: { user: { message: "Something went wrong." } }
    end
  end

  def destroy
    @user = User.destroy(params[:id])
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
