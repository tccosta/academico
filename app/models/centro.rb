class Centro < ActiveRecord::Base
  has_many :laboratorios

  validates :nome, :presence => { :message => '- deve ser preenchido' }
  validates :sigla, :presence => { :message => '- deve ser preenchida' }
end

