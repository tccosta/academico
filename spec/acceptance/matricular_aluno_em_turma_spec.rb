#coding: utf-8

require 'spec_helper'

feature 'matricular aluno em turmas' do
  scenario 'normal' do
    Factory(:disciplina, :nome => "Desenvolvimento Ágil", :codigo => 'COMP0112')
    Factory(:turma, :codigo => "A")
    Factory(:turma, :codigo => "B")    
    Factory(:aluno, :nome => "Kirill Lassounski")
    
    visit aluno_path(Factory(:aluno))
    
    click_link "Matricular aluno em turmas"
    
    check "Desenvolvimento Ágil - COMP0112 A"
    check "Desenvolvimento Ágil - COMP0112 B"
    
    click_button "Matricular"
    
    page.should have_content "Desenvolvimento Ágil - COMP0112 A"
    page.should have_content "Desenvolvimento Ágil - COMP0112 B"    
  end

end