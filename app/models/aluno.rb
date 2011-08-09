class Aluno < ActiveRecord::Base
  validates :nome,:email,:pai,:mae,:sexo,:estado_civil, :presence => {:message => ' - deve ser preenchido.'}
  validates :data_de_nascimento,:nacionalidade,:naturalidade, :presence => {:message => ' - deve ser preenchida.'}
end

