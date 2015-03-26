class RegistrationsController < ApplicationController
  def new
    @user = User.new
    if @user.save
      login(@user.email, @user.password)
      redirect_to root_url
    end
  end

  def create
    @user = User.new(params_user)

    if @user.save
        redirect_to root_url
    else
      render :new
    end
  end

  private
  def params_user
    params.require(:user).permit(:screen_name, :email, :password, :password_confirmation, :residencenow, :residence_country, :origin, :status, :mailmagazine, :school, :bio, :comment)
  end
end
