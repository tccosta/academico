#coding: utf-8

require 'spec_helper'

feature 'cadastrar dados academicos do aluno' do
  scenario 'cadastro normal' do
    visit new_dados_academico_path
    fill_in 'Matrícula', :with => '108123928'
    fill_in 'Curso', :with => 'Ciência da Computação'
    fill_in 'Semestre', :with => '201102'
    fill_in 'Forma de Ingresso', :with => 'ENEM'
    fill_in 'Data do vestibular/ENEM', :with => '22/12/2010'
    check 'Cotista'
    fill_in 'Tipo de cota', :with => 'Escola Publica'
    fill_in 'Link do Curriculum Lattes', :with => 'http://lattes.cnpq.br/1619508753128532'
    click_button 'Create Dados academico'

    page.should have_content 'Dado Academico cadastrado com sucesso.'
    page.should have_content 'Matricula: 108123928'
    page.should have_content 'Curso: Ciência da Computação'
    page.should have_content 'Semestre: 201102'
    page.should have_content 'Forma de ingresso: ENEM'
    page.should have_content 'Data do vestibular/ENEM: 22/12/2010'
    page.should have_content 'Cotista: Sim'
    page.should have_content 'Tipo de cota: Escola Publica'
    page.should have_content 'Link do lattes: http://lattes.cnpq.br/1619508753128532'
    page.should have_content 'Editar'
    page.should have_content 'Voltar'
  end

#  scenario 'cadastro incompleto' do
#    visit new_aluno_path
#    fill_in 'E-mail', :with => 'kirillsk8@gmail.com'
#    fill_in 'Pai', :with => 'Sergio'
#    fill_in 'Mãe', :with => 'Elena'
#    fill_in 'Sexo', :with => 'Masculino'
#    fill_in 'Nacionalidade', :with => 'Brasileiro'
#    fill_in 'Naturalidade', :with => 'Russo'
#    click_button 'Salvar'

#    page.should have_content 'Novo aluno'
#    page.should have_content 'Nome - deve ser preenchido.'
#    page.should have_content 'Data de nascimento - deve ser preenchida.'
#    page.should have_content 'Estado civil - deve ser preenchido.'
#    page.should have_content 'Voltar'
#  end
end

