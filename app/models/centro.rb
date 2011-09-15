class Centro < ActiveRecord::Base
  validates :nome, :presence => { :message => '- deve ser preenchido' }
  validates :sigla, :presence => { :message => '- deve ser preenchida' }
end

