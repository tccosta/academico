#encoding: utf-8

require 'spec_helper'

feature 'cadastrar dados do curso' do
   scenario 'cadastro normal' do

  Factory(:professor, :nome => 'Annabell')
	AreaDeConhecimento.create!(:name => 'redes')
	AreaDeConhecimento.create!(:name => 'ia')
  Laboratorio.create!(:sigla => 'LCMAT', :nome => 'Laboratório de Ciências Matemáticas')

    visit new_curso_path
    fill_in 'Nome', :with => 'Ciência da Computação'
    fill_in 'Sigla', :with => 'CC'
    select('LCMAT', :from => 'Laboratório')
    fill_in 'Duração', :with => '10'
	  select('Annabell', :from => 'Coordenador')
	  check 'redes'
    check 'ia'
    click_button 'Salvar'

    page.should have_content 'Curso cadastrado com sucesso.'
    page.should have_content 'Nome: Ciência da Computação'
    page.should have_content 'Sigla: CC'
    page.should have_content 'Laboratório: LCMAT'
    page.should have_content 'Duração: 10'
	  page.should have_content 'Coordenador: Annabell'
	  page.should have_content 'redes'
    page.should have_content 'ia'
    page.should have_content 'Editar'
    page.should have_content 'Voltar'
  end

end

