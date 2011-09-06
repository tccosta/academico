# coding: utf-8

require 'spec_helper'

feature 'cadastrar professor' do
  scenario 'cadastro normal' do
    visit new_professor_path
    fill_in 'Nome', :with => 'Professor Pardal'
    fill_in 'Matrícula', :with => '12345'
    fill_in 'Tipo', :with => 'Titular'
    fill_in 'Area de conhecimento', :with => 'Computação'
    fill_in 'Sub area de conhecimento', :with => 'Matematica'
    fill_in 'Lattes', :with => "http://"

    click_button 'Salvar'
    page.should have_content 'Nome: Professor Pardal'
    page.should have_content 'Matrícula: 12345'
    page.should have_content 'Area de conhecimento: Computação'
    page.should have_content 'Sub area de conhecimento: Matematica'
    page.should have_content 'Lattes: http://'
  end
end

