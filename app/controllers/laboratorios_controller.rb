# encoding: utf-8
class LaboratoriosController < InheritedResources::Base
  def create
    create!(:notice => 'Laboratório cadastrado com sucesso!')
  end
end

