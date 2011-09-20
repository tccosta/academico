class DisciplinasController < InheritedResources::Base

	def create
    create!(:notice => 'Disciplina cadastrada com sucesso.')
  end

  def new
    @disciplina = Disciplina.new
    @disciplina.laboratorio = Laboratorio.find(params[:laboratorio])
  end
end

