# coding: utf-8

require 'spec_helper'

feature 'emissao de plano de estudos' do
  # scenario 'tudo ok' do
  #                   @professor = Factory(:professor, :nome => 'Annabell')
  #                   @disciplina = Factory(:disciplina, :nome => 'Desenvolvimento Ágil')
  #                   @turma = Factory(:turma, :semestre_letivo => '2011-2')
  #                  
  #                   @aluno = Factory.create(:aluno, :nome => 'Kirill Lassounski')
  #                  # @turma = @aluno.turmas.create!(@turma)
  #                  @aluno.turmas << @turma
  #                 # @turma.alunos << @aluno
  #                  @turma.save!
  #                  @aluno.save!
  #                    
  #                   puts @turma.alunos
  #                   puts @aluno.turmas
  #                   
  #                   
  #                   visit plano_estudos_path(@aluno.id)
  #                 
  #                   page.should have_content 'plano de Kirill Lassounski'
  #                  
  #                 end

  scenario 'aluno com dados incompletos para emitir plano de estudos' do
    @aluno = Factory(:aluno, :nome => 'Kirill Lassounski')
    
    visit plano_estudos_path(@aluno.id)

    page.should have_content 'nao permitido, pois o aluno nao esta cadastrado em nenhuma turma'
  end

end

