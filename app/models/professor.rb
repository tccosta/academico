#coding: UTF-8
class Professor < ActiveRecord::Base
	has_one :curso

  camposMasc = { :nome => "Nome", :tipo => "Tipo" ,:lattes => "Link do curriculo lattes"}
  camposMasc.each { |campo| validates campo[0], :presence => { :message => campo[1] + ' - deve ser preenchido.'}}

  camposFem = {:matricula => "Matriculua",:area_de_conhecimento => "Área de conhecimento" ,:sub_area_de_conhecimento => "Sub-área de conhecimento"}
  camposFem.each { |campo| validates campo[0], :presence => { :message => campo[1] + ' - deve ser preenchida.'}}
end

