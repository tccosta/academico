class TurmasController < InheritedResources::Base

	before_filter :carregar_professores, :only => [:new, :edit, :create, :update]
  before_filter :carregar_disciplinas, :only => [:new, :edit, :create, :update]

  def create
    @turma = Turma.new params[:turma]
    if @turma.save
      redirect_to :turmas
    else
      render :action => 'new'
    end
  end

  def destroy
    @turma = Turma.find(params[:id])
    
    if @turma.alunos.present?
      redirect_to :turmas, :notice => "A turma possui alunos matriculados"
    else
      @turma.destroy
      redirect_to :turmas
    end
  end
  
 	def carregar_professores
		@professores = Professor.find(:all).collect {|u| [u.nome, u.id]}
	end

 	def carregar_disciplinas
		@disciplinas = Disciplina.find(:all).collect {|u| [u.nome, u.id]}
	end

end

