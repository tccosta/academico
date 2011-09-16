# encoding: utf-8
class AreaDeConhecimentosController < InheritedResources::Base
  def create
    create!(:notice => 'Área de conhecimento cadastrada com sucesso.')
  end
end
