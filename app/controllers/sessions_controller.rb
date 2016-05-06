class SessionsController < ApplicationController
  def new
    session[:user_id] = nil
  end

  def create
    user = User.find_by!(token: params[:token])
    session[:user_id] = user.id
    redirect_to user_url(user), notice: "Bem vindo, #{user.name} !"
  rescue ActiveRecord::RecordNotFound
    redirect_to login_path, alert: 'Não foi possível fazer o login. Verifique seus dados e tente novamente.'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Você deslogou com sucesso !'
  end
end
