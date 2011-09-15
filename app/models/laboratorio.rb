class Laboratorio < ActiveRecord::Base
  has_many :cursos

  validates :nome, :presence => { :message => '- deve ser preenchido' }
  validates :sigla, :presence => { :message => '- deve ser preenchida' }
end

