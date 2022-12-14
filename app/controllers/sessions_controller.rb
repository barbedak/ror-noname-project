class SessionsController < ApplicationController
  def new
  end

  def create
    user_params = params.require(:session)

    user = User.find_by(nickname: user_params[:nickname])
    # проверяем пароль пользователя, если пользователь нашелся (&). Вызов по цепочке
    user&.authenticate(user_params[:password])
    respond_to do |format|
      if user.present?
        session[:user_id] = user.id

        format.html { redirect_to brews_path, notice: "Добро пожаловать, #{ Employee.find(user.employee_id).name }" }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # выход пользователя, удаляем ид из сессии
  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: 'Вы вышли из аккаунта'
  end
end
