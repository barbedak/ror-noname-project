class SessionsController < ApplicationController
  def new
  end

  def create
    user_params = params.require(:session)

    user = User.find_by(login: user_params[:login])
    # проверяем пароль пользователя, если пользователь нашелся (&). Вызов по цепочке
    user&.authenticate(user_params[:password])

    if user.present?
      session[:user_id] = user.id

      redirect_to root_path
    else
      # flash.now отобразить немедленно и один раз
      flash.now[:alert] = 'Неправильный логин или пароль'

      #повторно отрисовываем форму, на которою человек заходил
      render :new
    end
  end

  # выход пользователя, удаляем ид из сессии
  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: 'Вы вышли из аккаунта'
  end
end
