class Laboratorio < ActiveRecord::Base
  has_many :cursos
  belongs_to :centro

  validates_presence_of :nome, :sigla 
end

