class Turma < ActiveRecord::Base
  has_and_belongs_to_many :alunos
  belongs_to :disciplina
  belongs_to :professor

  validates :professor, :semestre_letivo, :presence => {:message => ' - deve ser preenchido'}
  validates :disciplina, :presence => {:message => ' - deve ser preenchida'}
end

