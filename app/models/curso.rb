#coding: utf-8

class Curso < ActiveRecord::Base
	has_many :area_de_conhecimento_cursos
	has_many :area_de_conhecimentos, :through => :area_de_conhecimento_cursos

	has_many:aluno

  belongs_to :laboratorio
	belongs_to :professor

  validates_presence_of :nome, :message => 'Nome deve ser preenchido'
  validates_presence_of :sigla, :message => 'Sigla deve ser preenchida'
  validates_presence_of :laboratorio, :message => 'Laboratório deve ser preenchido'
  validates_presence_of :duracao, :message => 'Duração do curso deve ser preenchida'
  validates_presence_of :professor, :message => 'Coordenador do curso deve ser preenchido'
end

