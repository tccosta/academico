#coding: utf-8

require 'spec_helper'

feature 'cadastrar dados pessoais do aluno' do
  scenario 'cadastro normal' do
    visit new_aluno_path
    fill_in 'Nome', :with => 'Kirill'
    fill_in 'E-mail', :with => 'kirillsk8@gmail.com'
    fill_in 'Pai', :with => 'Sergio'
    fill_in 'Mãe', :with => 'Elena'
    fill_in 'Data de nascimento', :with => '22/02/1988'
    fill_in 'Sexo', :with => 'Masculino'
    fill_in 'Nacionalidade', :with => 'Brasileiro'
    fill_in 'Naturalidade', :with => 'Russo'
    fill_in 'Estado civil', :with => 'Solteiro'
    click_button 'Salvar'

    page.should have_content 'Aluno cadastrado com sucesso.'
    page.should have_content 'Nome: Kirill'
    page.should have_content 'E-mail: kirillsk8@gmail.com'
    page.should have_content 'Filiação'
    page.should have_content 'Pai: Sergio'
    page.should have_content 'Mãe: Elena'
    page.should have_content 'Data de nascimento: 22/02/1988'
    page.should have_content 'Sexo: Masculino'
    page.should have_content 'Nacionalidade: Brasileiro'
    page.should have_content 'Naturalidade: Russo'
    page.should have_content 'Estado civil: Solteiro'
    page.should have_content 'Editar'
    page.should have_content 'Voltar'
  end

  scenario 'cadastro incompleto' do
    visit new_aluno_path
    fill_in 'E-mail', :with => 'kirillsk8@gmail.com'
    fill_in 'Pai', :with => 'Sergio'
    fill_in 'Mãe', :with => 'Elena'
    fill_in 'Sexo', :with => 'Masculino'
    fill_in 'Nacionalidade', :with => 'Brasileiro'
    fill_in 'Naturalidade', :with => 'Russo'
    click_button 'Salvar'


    page.should have_content 'Nome - deve ser preenchido.'
    page.should have_content 'Data de nascimento - deve ser preenchida.'
    page.should have_content 'Estado civil- deve ser preenchido.'
    page.should have_content 'E-mail: kirillsk8@gmail.com'
    page.should have_content 'Filiação'
    page.should have_content 'Pai: Sergio'
    page.should have_content 'Mãe: Elena'
    page.should have_content 'Sexo: Masculino'
    page.should have_content 'Nacionalidade: Brasileiro'
    page.should have_content 'Naturalidade: Russo'
    page.should have_content 'Voltar'
  end
end

