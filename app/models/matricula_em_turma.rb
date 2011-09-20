class MatriculaEmTurma
  include ActiveModel::Validations
  attr_accessor :disciplina, :turma
  
  validates_presence_of :disciplina
  validates_presence_of :turma
  
  def initialize disciplina, turma
    @disciplina, @turma = disciplina, turma
  end
end