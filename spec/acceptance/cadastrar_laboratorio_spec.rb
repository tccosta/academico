#encoding: utf-8

require 'spec_helper'

feature 'Cadastrar laboratório para centro' do
  scenario 'Cadastro normal' do

    visit centro_path(Factory(:centro))
    click_link 'Novo Laboratório'

    fill_in 'Nome', :with => 'Laboratório de Ciências Matemáticas'
    fill_in 'Sigla', :with => 'LCMAT'
    click_button 'Salvar'

    page.should have_content 'Laboratório cadastrado com sucesso!'
    page.should have_content 'Nome: Laboratório de Ciências Matemáticas'
    page.should have_content 'Sigla: LCMAT'
    page.should have_content 'Editar'
    page.should have_content 'Voltar'

  end

  scenario 'cadastro incorreto' do
    visit centro_path(Factory(:centro))
    click_link 'Novo Laboratório'

    click_button 'Salvar'

    page.should have_content 'O campo deve ser preenchido'
    page.should have_content 'O campo deve ser preenchido'

  end

end

