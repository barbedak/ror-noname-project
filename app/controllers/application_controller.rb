class ApplicationController < ActionController::Base
  # чтобы метод можно было использовать в качестве хелпера (доступен во всех шаблонах)
  helper_method :current_user

  private
  def current_user
    # ||= если слева nil, то выполни справа
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
     
  end
end
