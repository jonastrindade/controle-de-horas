class HorariosController < ApplicationController
  before_action :set_horarios, only: [:edit, :destroy]
  
  def create
    byebug
    @horario = Horario.create! horario_params
  end

  def index
    @horarios = User.find(current_user.id).horarios
  end

  def edit
  end

  def destroy
  end

  def new
    @horario
  end
  
  private
    def set_horarios
      @horario = Horario.find(params[:id])
    end

    def horario_params
      params.permit([:inicio, :inicio_almoco, :fim_almoco, :fim, :data])
    end
end