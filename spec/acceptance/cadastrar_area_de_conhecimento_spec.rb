#encoding: utf-8

require 'spec_helper'

feature 'cadastrar área de conhecimento' do
  scenario 'cadastro normal' do
    visit new_area_de_conhecimento_path

    fill_in 'Nome', :with => 'Redes'
    click_button 'Salvar'

    page.should have_content 'Área de conhecimento cadastrada com sucesso.'
    page.should have_content 'Nome: Redes'
    page.should have_content 'Edit'
    page.should have_content 'Back'

  end

  scenario 'cadastro incorreto' do
    visit new_area_de_conhecimento_path

    click_button 'Salvar'

    page.should have_content 'O campo deve ser preenchido'

  end

end
