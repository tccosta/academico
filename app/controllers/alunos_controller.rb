class AlunosController < InheritedResources::Base
  def create
    create!(:notice => 'Aluno cadastrado com sucesso.')
  end
end

