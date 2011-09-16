class AreaDeConhecimento < ActiveRecord::Base
	has_many :area_de_conhecimento_cursos
	has_many :cursos, :through => :area_de_conhecimento_cursos

  validates_presence_of :name
end
