# encoding: utf-8

require 'spec_helper'

feature 'cadastrar a formação do aluno' do
  scenario 'cadastro para formação de nível superior' do
    visit new_formacao_path
    fill_in 'Instituição', :with => 'UENF'
    select('Bacharelado', :from => 'Tipo')
    fill_in 'Ano de Início', :with => '2007'
    fill_in 'Ano de Conclusão', :with => '2011'
    fill_in 'Área de Conhecimento', :with => 'Computação'
    fill_in 'Título do Trabalho de Conclusão', :with => 'DSLs'
    fill_in 'Orientador', :with => 'Rodrigo'
    click_button 'Salvar'

    page.should have_content 'Formação cadastrada com sucesso!'
    page.should have_content 'Instituição: UENF'
    page.should have_content 'Tipo: Bacharelado'
    page.should have_content 'Ano de Início: 2007'
    page.should have_content 'Ano de Conclusão: 2011'
    page.should have_content 'Área de Conhecimento: Computação'
    page.should have_content 'Título do Trabalho de Conclusão'
    page.should have_content 'Orientador: Rodrigo'
    page.should have_content 'Editar'
    page.should have_content 'Voltar'
  end


  scenario 'cadastro para fromação de nível técnico' do
    visit new_formacao_path
    fill_in 'Instituição', :with => 'IFF'
    select('Técnico', :from => 'Tipo')
    fill_in 'Ano de Início', :with => '2002'
    fill_in 'Ano de Conclusão', :with => '2003'
    fill_in 'Área de Conhecimento', :with => 'Informática'
    click_button 'Salvar'

    page.should have_content 'Formação cadastrada com sucesso!'
    page.should have_content 'Instituição: IFF'
    page.should have_content 'Tipo: Técnico'
    page.should have_content 'Ano de Início: 2002'
    page.should have_content 'Ano de Conclusão: 2003'
    page.should have_content 'Área de Conhecimento: Informática'
    page.should have_content 'Editar'
    page.should have_content 'Voltar'
  end

  scenario 'cadastro para formação de nível médio' do
    visit new_formacao_path
    fill_in 'Instituição', :with => 'IFF'
    select( 'Médio', :from => 'Tipo')
    fill_in 'Ano de Início', :with => '2001'
    fill_in 'Ano de Conclusão', :with => '2003'
    click_button 'Salvar'

    page.should have_content 'Formação cadastrada com sucesso!'
    page.should have_content 'Instituição: IFF'
    page.should have_content 'Tipo: Ensino Médio'
    page.should have_content 'Ano de Início: 2001'
    page.should have_content 'Ano de Conclusão: 2003'
    page.should have_content 'Editar'
    page.should have_content 'Voltar'
  end

  scenario 'cadastro para formação incompleto' do
    visit new_formacao_path
    click_button 'Salvar'

    page.should have_content 'Instituição - deve ser preenchida.'
    page.should have_content 'Tipo - deve ser preenchido.'
    page.should have_content 'Ano de Início - deve ser preenchido'
  end

end

