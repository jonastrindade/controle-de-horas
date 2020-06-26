class Horario < ApplicationRecord
  belongs_to :user

  # before_save :validar_horarios

  # validates :inicio, presence: { message: "Favor preencher horário de início" }
  # validates :inicio_almoco, presence: { message: "Favor preencher horário de início do almoço" }
  # validates :fim_almoco, presence: { message: "Favor preencher horário de retorno do almoço" }
  # validates :fim, presence: { message: "Favor preencher horário de saída" }

  def validar_horarios
    self.inicio < self.inicio_almoco < self.fim_almoco < self.fim
  end

  def horas_trabalhadas_dia
    return Time.at(((self.fim - self.inicio) - (self.fim_almoco - self.inicio_almoco))+ 3*3600)
  end

  def self.horas_trabalhadas_mes mes # necessita no current_user_id
    total_mes = 0
    User.find(1).horarios.where("data >= '#{mes.beginning_of_month}' AND data < '#{mes.end_of_month}'").each do |d|
      total_mes += d.horas_trabalhadas_dia
    end
    return total_mes
  end

end
