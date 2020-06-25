class HorariosController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_horarios, only: [:edit, :destroy]
  
  def create
    @horario = Horario.new horario_params
    @horario.user_id = current_user.id
    @horario.save!
  end

  def index
    @horarios = User.find(current_user.id).horarios.order :data
  end

  def edit
  end

  def destroy
  end

  def new
    @horario = Horario.new
  end
  
  private
    def set_horarios
      @horario = Horario.find(params[:id])
    end

    def horario_params
      params.require(:horario).permit([:inicio, :inicio_almoco, :fim_almoco, :fim, :data])
    end
end