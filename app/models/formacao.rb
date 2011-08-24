# encoding: utf-8
class Formacao < ActiveRecord::Base
  validates_presence_of :instituicao, :message => 'Instituição - deve ser preenchida.'
  validates_presence_of :tipo, :message => 'Tipo - deve ser preenchido.'
  validates_presence_of :ano_de_inicio, :message => 'Ano de Início - deve ser preenchido.'

  TIPOS = ['Ensino Médio', 'Técnico', 'Bacharelado', 'Licenciatura', 'Pós-Graduação', 'Mestrado', 'Doutorado', 'Pós-Doutorado']

end

