class Laboratorio < ActiveRecord::Base
  has_many :cursos

  validates_presence_of :nome, :sigla 
end

