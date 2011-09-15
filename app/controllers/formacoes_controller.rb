# encoding: utf-8
class FormacoesController < InheritedResources::Base
  def create
    create!(:notice => 'Formação cadastrada com sucesso!')
  end

  def new
    @formacao = Formacao.new
    @formacao.aluno = Aluno.find(params[:aluno])
  end
end

