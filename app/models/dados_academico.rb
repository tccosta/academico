#coding: utf-8
class DadosAcademico < ActiveRecord::Base
  validates_presence_of :matricula, :curso, :semestre, :forma_de_ingresso, :link_do_lattes, :data_da_prova_do_ingresso
  FORMA_DE_INGRESSO = ['Vestibular', 'Transferência Externa', 'Transferência Interna', 'Reingresso']
  TIPO_DE_COTA = ['Racial', 'Ensino Público', 'Baixa Renda', 'Indígena']
end

