#encoding: utf-8

require 'spec_helper'

feature 'cadastrar laboratório' do
  scenario 'cadastro normal' do
    visit new_laboratorio_path

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
    visit new_laboratorio_path

    click_button 'Salvar'

    page.should have_content '- deve ser preenchido'
    page.should have_content '- deve ser preenchida'

  end

end

