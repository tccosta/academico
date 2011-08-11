#coding: utf-8

require 'spec_helper'

feature 'cadastrar dados do curso' do
  scenario 'cadastro normal' do
    visit new_curso_path
    fill_in 'Nome', :with => 'Ciência da Computação'
    fill_in 'Sigla', :with => 'CC'
    fill_in 'Laboratorio', :with => 'LCMAT'
    fill_in 'Duracao', :with => '10'
    fill_in 'Coordenador', :with => 'Annabell'
    click_button 'Salvar'

    page.should have_content 'Curso cadastrado com sucesso.'
    page.should have_content 'Nome: Ciência da Computação'
    page.should have_content 'Sigla: CC'
    page.should have_content 'Laboratorio: LCMAT'
    page.should have_content 'Duracao: 10'
	page.should have_content 'Coordenador: Annabell'
    page.should have_content 'Editar'
    page.should have_content 'Voltar'
  end

end
