# encoding: utf-8
class LaboratoriosController < InheritedResources::Base
  def create
    create!(:notice => 'Laboratório cadastrado com sucesso!')
  end

  def new
    @laboratorio = Laboratorio.new
    @laboratorio.centro = Centro.find(params[:centro])
  end

end

