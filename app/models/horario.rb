#encoding: utf-8
class Horario < ActiveRecord::Base
belongs_to :turma
validates_presence_of :dia_da_semana, :hora_de_inicio, :hora_de_fim
DIAS_DA_SEMANA = ['Segunda-feira','Terça-feira','Quarta-feira','Quinta-feira','Sexta-feira','Sábado',]

validate :hora_fim_deve_ser_apos_hora_inicio
  def hora_fim_deve_ser_apos_hora_inicio
    if hora_de_inicio >= hora_de_fim
      errors.add :hora_de_fim, 'Hora de fim deve ser após hora de início'
    end
  end
end

