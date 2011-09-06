class DadosAcademicosController < InheritedResources::Base
    def create
      create!(:notice => 'Dado Academico cadastrado com sucesso.')
    end
end
