class Turma < ActiveRecord::Base
  has_and_belongs_to_many :alunos
  belongs_to :disciplina
  belongs_to :professor

  validates_presence_of :professor, :semestre_letivo, :disciplina
end

