class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    user = User.create(user_params)
    redirect_to "/users/#{user.id}"
  end

  def show
    id = params[:id]
    @user = User.find(id)
    render :show
  end

  private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
