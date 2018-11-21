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
      redirect_to usuarios_url
    end

  def edit
      @usuarios=Usuario.find(params[:id])
    end

  def update
      @usuarios=Usuario.find(params[:id])
      if @usuarios.update_attributes(usuarios_params)
        redirect_to usuarios_url
      else
        render action: 'edit'
      end
    end
  def new
      @usuarios=Usuario.new
    end
  def create
      @usuarios=Usuario.new(usuarios_params)
      if @usuarios.save
        redirect_to usuarios_url
      else
        render action: 'new'
      end
    end
  end

  private
  def usuarios_params
    params.require(:usuario).permit(:nombre,:email)
    end