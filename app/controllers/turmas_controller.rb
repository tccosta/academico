class TurmasController < InheritedResources::Base

	before_filter :carregarProfessores, :only => [:new, :edit, :create, :update]
  before_filter :carregarDisciplinas, :only => [:new, :edit, :create, :update]

  def create
    create!(:notice => 'Turma cadastrada com sucesso!')
  end

 	def carregarProfessores
		@professores = Professor.find(:all).collect {|u| [u.nome, u.id]}
	end

 	def carregarDisciplinas
		@disciplinas = Disciplina.find(:all).collect {|u| [u.nome, u.id]}
	end

end

