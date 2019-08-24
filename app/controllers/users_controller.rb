class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
#      binding.pry
      redirect_to controller: 'application', action: 'hello'
    else
      redirect_to controller: 'users', action: 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :password,
                                   :password_confirmation)
    end
end
