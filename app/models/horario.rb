class Horario < ApplicationRecord
  belongs_to :user

  # before_save :validar_horarios

  # validates :inicio, presence: { message: "Favor preencher horário de início" }

  def validar_horarios
  end

  def horas_trabalhadas_mes
  end
end
