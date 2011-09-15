# encoding: utf-8
class Formacao < ActiveRecord::Base
  belongs_to:aluno

  validates_presence_of :instituicao, :tipo, :ano_de_inicio
  validates_numericality_of :ano_de_inicio, :only_integer => true
  validates_numericality_of :ano_de_conclusao, :only_integer => true, :allow_blank => true
  TIPOS = ['Ensino Médio', 'Técnico', 'Bacharelado', 'Licenciatura', 'Pós-Graduação', 'Mestrado', 'Doutorado', 'Pós-Doutorado']

end

