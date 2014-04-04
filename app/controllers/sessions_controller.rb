# encoding: utf-8
class SessionsController < ApplicationController
  def new
    @session = Session.new
  end
  def create
    @session = Session.new params[:session]
    @usuario = Usuario.login(@session.login,@session.password)
    if @usuario
      session[:usuario] = @usuario
      redirect_to root_path
    else
      @session.errors.add :login, "Nome ou senha inválidos"
      render "new"
    end
  end
end
