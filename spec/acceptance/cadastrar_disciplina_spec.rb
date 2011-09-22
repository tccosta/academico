#encoding: utf-8

require 'spec_helper'

feature 'cadastrar disciplina' do
  scenario 'cadastro normal' do

    laboratorio = Factory(:laboratorio)
    visit laboratorio_path(laboratorio)
    click_link 'Nova Disciplina'

    fill_in 'Código', :with => 'INFO00'
    fill_in 'Nome', :with => 'Redes'
    fill_in 'Créditos', :with => '4'
    fill_in 'Carga horária', :with => '30'
    fill_in 'Número máximo de alunos', :with => '30'
    click_button 'Salvar'

    page.should have_content 'Disciplina cadastrada com sucesso.'
    page.should have_content 'Código: INFO00'
    page.should have_content 'Nome: Redes'
    page.should have_content 'Créditos: 4'
    page.should have_content 'Carga horária: 30'
    page.should have_content 'Número máximo de alunos: 30'
    page.should have_content 'Editar'
    page.should have_content 'Voltar'
  end

  scenario 'cadastro incompleto' do

    lab = Factory.create :laboratorio
    visit laboratorio_path(lab)
    click_link 'Nova Disciplina'
    fill_in 'Código', :with => 'INFO00'
    fill_in 'Créditos', :with => '4'
    fill_in 'Número máximo de alunos', :with => '30'
    click_button 'Salvar'

    page.should have_content 'O campo deve ser preenchido'
    page.should have_content 'O campo deve ser preenchido'
    page.should have_content 'Voltar'
  end
end

