#coding: utf-8

class Disciplina < ActiveRecord::Base
  has_many :turmas
  belongs_to :laboratorio

  validates_presence_of :codigo, :nome, :numero_maximo_de_aluno, :creditos, :carga_horaria

end

