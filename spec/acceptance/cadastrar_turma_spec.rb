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

    click_button 'Salvar'

    page.should have_content 'Turmas'
    page.should have_content '2011-1'
    page.should have_content 'Desenvolvimento Ágil'
    page.should have_content 'Annabell'
  end

  scenario 'cadastro incorreto' do
    visit new_turma_path
    click_button 'Salvar'

    page.should have_content 'O campo deve ser preenchido'
  end

  scenario 'cadastro com vários horários' do
    Factory(:professor, :nome => 'Annabell')
    Factory(:disciplina, :nome => 'Desenvolvimento Ágil')
    visit new_turma_path

    fill_in 'Semestre Letivo', :with => '2011-1'
    select('Annabell', :from => 'Professor')
    select('Desenvolvimento Ágil', :from => 'Disciplina')
    click_button 'Salvar'
    page.should have_content 'Turmas'
    page.should have_content 'Editar'
    page.should have_content 'Excluir'
    page.should have_content 'Adicionar horário'

    click_link 'Adicionar horário'
    select('Terça-feira', :from => 'Dia da semana')
    select('10', :from => 'horario_hora_de_inicio_4i')
    select('00', :from => 'horario_hora_de_inicio_5i')
    select('12', :from => 'horario_hora_de_fim_4i')
    select('00', :from => 'horario_hora_de_fim_5i')
    click_button 'Salvar'

    click_link 'Adicionar horário'
    select('Quinta-feira', :from => 'Dia da semana')
    select('08', :from => 'horario_hora_de_inicio_4i')
    select('00', :from => 'horario_hora_de_inicio_5i')
    select('10', :from => 'horario_hora_de_fim_4i')
    select('00', :from => 'horario_hora_de_fim_5i')
    click_button 'Salvar'

    page.should have_content 'Terça-feira, de 10:00 à 12:00'
    page.should have_content 'Quinta-feira, de 08:00 à 10:00'
  end

end

