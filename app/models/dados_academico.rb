#coding: utf-8
class DadosAcademico < ActiveRecord::Base
  validates :matricula, :curso, :semestre, :forma_de_ingresso, :link_do_lattes, :presence => { :message => "- deve ser preenchido(a)"}
  validates :data_da_prova_do_ingresso, :presence => { :message => "- deve ser preenchida ou e invalida" } 
  FORMA_DE_INGRESSO = ['Vestibular', 'Transferência Externa', 'Transferência Interna', 'Reingresso']
end

