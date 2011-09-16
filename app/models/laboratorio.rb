class Laboratorio < ActiveRecord::Base
  has_many :cursos
  belongs_to :centro

  validates :nome, :presence => { :message => '- deve ser preenchido' }
  validates :sigla, :presence => { :message => '- deve ser preenchida' }
end

