class Helpers

  def current_user(sessions)
    @user = User.find_by(username: params[:username])
    if @user
      sessions[:user_id] = @user.id
      redirect '/account'
    end
  end

  def is_logged_in?
  end
end
