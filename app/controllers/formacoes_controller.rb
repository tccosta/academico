# encoding: utf-8
class FormacoesController < InheritedResources::Base
  def create
    create!(:notice => 'Formação cadastrada com sucesso!')
  end
end

