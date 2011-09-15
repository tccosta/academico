# coding: utf-8

require 'spec_helper'

feature 'cadastrar turma' do
  scenario 'cadastro normal' do
    Factory(:professor, :nome => 'Annabell')
    Factory(:disciplina, :nome => 'Desenvolvimento Ágil')
    visit new_turma_path

    fill_in 'Semestre Letivo', :with => '2011-1'
    select('Annabell', :from => 'Professor')
    select('Desenvolvimento Ágil', :from => 'Disciplina')
    select('17', :from => 'Hour')
    select('15', :from => 'Minute')

    click_button 'Salvar'

    page.should have_content 'Semestre letivo: 2011-1'
    page.should have_content 'Disciplina: Desenvolvimento Ágil'
    page.should have_content 'Professor: Annabell'
    page.should have_content 'Horário: 17:15'
  end

  scenario 'cadastro incorreto' do
    visit new_turma_path

    click_button 'Salvar'

    page.should have_content '- deve ser preenchida'
    page.should have_content '- deve ser preenchido'
  end

end

