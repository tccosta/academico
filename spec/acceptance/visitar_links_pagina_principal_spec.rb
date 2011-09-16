#coding: utf-8

require 'spec_helper'

feature 'visitar links na página principal' do
  scenario 'visita pagina principal' do
    visit root_path
    page.should have_content 'Sistema Acadêmico'
  end

  scenario 'visita link de alunos' do
    clicar_link_e_verificar_texto 'Professores'
  end

  scenario 'visita link de professores' do
    clicar_link_e_verificar_texto 'Professores'
  end

  scenario 'visita link de dados acadêmicos' do
    clicar_link_e_verificar_texto 'Dados acadêmicos'
  end

 
  def clicar_link_e_verificar_texto(texto)
    visit root_path
    click_link texto
    page.should have_content texto
  end
end

