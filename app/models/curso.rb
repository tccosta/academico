#coding: utf-8

class Curso < ActiveRecord::Base
	has_many :area_de_conhecimento_cursos
	has_many :area_de_conhecimentos, :through => :area_de_conhecimento_cursos

	has_many:aluno

  belongs_to :laboratorio
	belongs_to :professor

  validates_presence_of :nome, :sigla, :laboratorio, :duracao, :professor
end

