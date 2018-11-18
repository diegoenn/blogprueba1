class UsuariosController < ApplicationController
   def index
      @usuarios=Usuario.all
    end

  def show
      @usuarios=Usuario.find(params[:id])
      render action: "detalle"
    end

  def detalle
      @usuarios=Usuario.find(1)
    end

  def destroy
      Usuario.find(params[:id]).destroy
      redirect_to_users_url
    end

  end