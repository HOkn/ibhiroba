class SettingsController < ApplicationController
  before_filter :require_login
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params_user)
      redirect_to user_url(@user), notice: "アカウント設定を更新しました"
    else
      render :edit
    end
  end


  private
  def params_user
    params.require(:user).permit(:screen_name, :email, :password, :password_confirmation, :residencenow, :residence_country, :origin, :status, :mailmagazine, :school, :bio, :comment)
  end
end
