class DisciplinasController < InheritedResources::Base

	def create
    create!(:notice => 'Disciplina cadastrada com sucesso.')
  end
end
