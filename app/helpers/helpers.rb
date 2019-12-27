class Helpers

  def current_user(session_hash)
    @user = User.find(session_hash[:user_id])
  end

  def is_logged_in?(sessions)
    @user = User.find_by(username: params[:username])
    if @user
      session[:user_id] = @user.id
      redirect '/account'
    end
  end
end
