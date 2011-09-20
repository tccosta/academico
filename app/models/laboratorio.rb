class Laboratorio < ActiveRecord::Base
  has_many :cursos
  has_many :disciplinas
  belongs_to :centro

  validates_presence_of :nome, :sigla
end

