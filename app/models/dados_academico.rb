class DadosAcademico < ActiveRecord::Base
  validates :matricula, :curso, :semestre, :forma_de_ingresso, :data_da_prova_do_ingresso, :link_do_lattes, :presence => { :message => "- deve ser preenchido(a)"}
end
