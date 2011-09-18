class TurmasController < InheritedResources::Base

	before_filter :carregarProfessores, :only => [:new, :edit, :create, :update]
  before_filter :carregarDisciplinas, :only => [:new, :edit, :create, :update]

  def create
    @turma = Turma.new params[:turma]
    if @turma.save
      redirect_to :turmas
    else
      render :action => 'new'
    end
  end

 	def carregarProfessores
		@professores = Professor.find(:all).collect {|u| [u.nome, u.id]}
	end

 	def carregarDisciplinas
		@disciplinas = Disciplina.find(:all).collect {|u| [u.nome, u.id]}
	end

end

