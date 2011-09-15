#encoding: utf-8

require 'spec_helper'

feature 'cadastrar centro' do
  scenario 'cadastro normal' do
    visit new_centro_path

    fill_in 'Nome', :with => 'Centro de Ciências Tecnológicas'
    fill_in 'Sigla', :with => 'CCT'
    click_button 'Salvar'

    page.should have_content 'Centro cadastrado com sucesso.'
    page.should have_content 'Nome: Centro de Ciências Tecnológicas'
    page.should have_content 'Sigla: CCT'
    page.should have_content 'Editar'
    page.should have_content 'Voltar'

  end

  scenario 'cadastro incorreto' do
    visit new_centro_path

    click_button 'Salvar'

    page.should have_content '- deve ser preenchido'
    page.should have_content '- deve ser preenchida'

  end

end

