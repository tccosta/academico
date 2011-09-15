#coding: UTF-8
class Professor < ActiveRecord::Base
	has_one :curso
	has_many :turmas

  validates_presence_of :nome, :tipo, :lattes, :matricula, :area_de_conhecimento, :sub_area_de_conhecimento

  TIPOS = ['Titular','Associado']
end

