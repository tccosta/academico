#encoding: utf-8

require 'spec_helper'

feature 'cadastrar dados do curso' do
  scenario 'cadastro normal' do

	Professor.create!(:nome => 'Annabell')	
	AreaDeConhecimento.create!(:name => 'redes')

    visit new_curso_path
    fill_in 'Nome', :with => 'Ciência da Computação'
    fill_in 'Sigla', :with => 'CC'
    fill_in 'Laboratório', :with => 'LCMAT'
    fill_in 'Duração', :with => '10'
	select('Annabell', :from => 'Coordenador')
	check 'redes'
    click_button 'Salvar'
    save_and_open_page

    page.should have_content 'Curso cadastrado com sucesso.'
    page.should have_content 'Nome: Ciência da Computação'
    page.should have_content 'Sigla: CC'
    page.should have_content 'Laboratório: LCMAT'
    page.should have_content 'Duração: 10'
	page.should have_content 'Coordenador: Annabell'
#	within_fieldset('Áreas') do
	  page.should have_content 'redes'
#	end
    page.should have_content 'Editar'
    page.should have_content 'Voltar'
  end

end
