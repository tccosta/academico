#coding: utf-8

class Disciplina < ActiveRecord::Base
  has_many :turmas

  camposMasc = { :codigo => 'Código', :nome => "Nome", :numero_maximo_de_aluno => "Número máximo de alunos" , :creditos => 'Créditos' }
  camposMasc.each { |campo| validates campo[0], :presence => { :message => campo[1] + ' - deve ser preenchido.'}}
 camposFem = {:carga_horaria => "Carga horária"}
  camposFem.each { |campo| validates campo[0], :presence => { :message => campo[1] + ' - deve ser preenchida.'}}
end

