class CentrosController < InheritedResources::Base
  def create
    create!(:notice => 'Centro cadastrado com sucesso.')
  end
end

