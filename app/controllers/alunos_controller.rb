#coding: utf-8

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
  
  def matricular_em_turma
    @aluno = Aluno.find(params[:id])
  end

    
end

