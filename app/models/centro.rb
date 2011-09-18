class Centro < ActiveRecord::Base

  has_many :laboratorios

  validates_presence_of :nome, :sigla

end

