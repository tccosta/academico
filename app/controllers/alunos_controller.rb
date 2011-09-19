class AlunosController < InheritedResources::Base
  def create
    create!(:notice => 'Aluno cadastrado com sucesso.')
  end
  
  def plano_estudos
    @aluno = Aluno.find(params[:id])
    unless @aluno.turmas.nil?
      render "erro_plano"
    else
      render :layout => false
    end
  end
end

