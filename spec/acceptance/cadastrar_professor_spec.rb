# coding: utf-8

require 'spec_helper'

feature 'cadastrar professor' do
  scenario 'cadastro normal' do
    visit new_professor_path
    fill_in 'Nome', :with => 'Professor Pardal'
    fill_in 'Matrícula', :with => '12345'
    click_button 'Salvar'
    page.should have_content 'Nome: Professor Pardal'
    page.should have_content 'Matrícula: 12345'
  end
end

