# encoding: utf-8
class Formacao < ActiveRecord::Base
  validates_presence_of :instituicao, :tipo, :ano_de_inicio
  validates_numericality_of :ano_de_inicio, :only_integer => true, :message => 'Ano de Início - deve ser do tipo número inteiro'
  validates_numericality_of :ano_de_conclusao, :only_integer => true, :message => 'Ano de Conclusão - deve ser do tipo número inteiro'
  TIPOS = ['Ensino Médio', 'Técnico', 'Bacharelado', 'Licenciatura', 'Pós-Graduação', 'Mestrado', 'Doutorado', 'Pós-Doutorado']

end

