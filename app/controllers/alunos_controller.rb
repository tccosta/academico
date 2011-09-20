#coding: utf-8

class AlunosController < InheritedResources::Base
  def create
    create!(:notice => 'Aluno cadastrado com sucesso.')
  end
  
  def plano_estudos
    @aluno = Aluno.find(params[:id])
    if @aluno.turmas.present?
      render :layout => false
    else
      render "erro_plano"
    end
  end
  
  def matricular_em_turma
    @aluno = Aluno.find(params[:id])
  end
    
end

