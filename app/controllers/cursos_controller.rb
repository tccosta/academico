class CursosController < InheritedResources::Base

	before_filter :carregarProfessores, :only => [:new, :edit, :create, :update]
  before_filter :carregarLaboratorios, :only => [:new, :edit, :create, :update]

	def index
		@cursos = Curso.all
		@professor = Curso.all(:include => :professor)
		respond_to do |format|
			format.html
			format.xml {render :xml => @professor}
		end

  @laboratorio = Curso.all(:include => :laboratorio)
#		respond_to do |format|
#			format.html
#			format.xml {render :xml => @laboratorio}
#		end
	end

	def create
    create!(:notice => 'Curso cadastrado com sucesso.')
  	end

	def show
		@curso = Curso.find(params[:id])
	end

	protected

	def carregarProfessores
		@professores = Professor.find(:all).collect {|u| [u.nome, u.id]}
	end

	def carregarLaboratorios
		@laboratorios = Laboratorio.find(:all).collect {|u| [u.sigla, u.id]}
	end

end
