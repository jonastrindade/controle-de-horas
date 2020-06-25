class Horario < ApplicationRecord
  belongs_to :user

  # before_save :validar_horarios

  # validates :inicio, presence: { message: "Favor preencher horário de início" }

end
