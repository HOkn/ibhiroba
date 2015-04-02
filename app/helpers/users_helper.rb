module UsersHelper
  # def render_user_screen_name helper
  #   if user.screen_name.blank?
  #     nil
  #   else
  #     user.screen_name
  #   end
  # end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
