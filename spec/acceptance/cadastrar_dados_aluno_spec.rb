#coding: utf-8

require 'spec_helper'

feature 'cadastrar dados pessoais do aluno' do
  scenario 'cadastro normal' do
    visit new_aluno_path
    #DADOS PESSOAIS DO ALUNO
    fill_in 'Nome', :with => 'Kirill'
    fill_in 'E-mail', :with => 'kirillsk8@gmail.com'
    fill_in 'Pai', :with => 'Sergio'
    fill_in 'Mãe', :with => 'Elena'
    fill_in 'Data de nascimento', :with => '22/02/1988'
    select('Masculino', :from => 'Sexo')
    fill_in 'Nacionalidade', :with => 'Brasileiro'
    select('Rio de Janeiro', :from => 'Naturalidade')
    select('Solteiro(a)', :from => 'Estado civil')
    #DADOS DE DOCUMENTAÇÃO DO ALUNO
    fill_in 'Cpf', :with => '12797827732'
    fill_in 'Rg', :with => '209912310'
    fill_in 'Orgao emissor do rg', :with => 'Detran'
    select('Rio de Janeiro', :from => 'Estado do rg')
    fill_in 'Data de expedicao do rg', :with => '20/09/2009'
    fill_in 'Numero do titulo de eleitor', :with => '12121212121'
    fill_in 'Zona do titulo de eleitor', :with => '98'
    fill_in 'Secao do titulo de eleitor', :with => '103'
    select('Rio de Janeiro', :from => 'Estado do titulo de eleitor')
    fill_in 'Data de emissao do titulo de eleitor', :with => '10/01/2009'
    fill_in 'Numero do certificado de reservista', :with => '324343'
    fill_in 'Orgão do Certificado de Reservista', :with => 'exercito'
    fill_in 'Categoria do certificado de reservista', :with => 'a'
    fill_in 'Data de emissao do certificado de reservista', :with => '10/02/2009'
    select('Rio de Janeiro', :from => 'Estado do certificado de reservista')
    click_button 'Salvar'
    #save_and_open_page
    page.should have_content 'Aluno cadastrado com sucesso.'
    page.should have_content 'Nome: Kirill'
    page.should have_content 'E-mail: kirillsk8@gmail.com'
    page.should have_content 'Filiação'
    page.should have_content 'Pai: Sergio'
    page.should have_content 'Mãe: Elena'
    page.should have_content 'Data de nascimento: 22/02/1988'
    page.should have_content 'Sexo: Masculino'
    page.should have_content 'Nacionalidade: Brasileiro'
    page.should have_content 'Naturalidade: RJ'
    page.should have_content 'Estado civil: Solteiro(a)'
    page.should have_content 'CPF: 127.978.277-32'
    page.should have_content 'RG: 209912310'
    page.should have_content 'Orgão Emissor do RG: Detran'
    page.should have_content 'Estado do RG: RJ'
    page.should have_content 'Data de Expedição do RG: 20/09/2009'
    page.should have_content 'Número do Título de Eleitor: 12121212121'
    page.should have_content 'Zona do Título de Eleitor: 98'
    page.should have_content 'Seção do Título de Eleitor: 103'
    page.should have_content 'Estado do Título de Eleitor: RJ'
    page.should have_content 'Data de Emissão do Título de Eleitor: 10/01/2009'
    page.should have_content 'Número do Certificado de Reservista: 324343'
    page.should have_content 'Orgão do Certificado de Reservista: exercito'
    page.should have_content 'Categoria do Certificado de Reservista: a'
    page.should have_content 'Data de Emissão do Certificado de Reservista: 10/02/2009'
    page.should have_content 'Estado do Certificado de Reservista: RJ'
    page.should have_content 'Editar'
    page.should have_content 'Voltar'
  end

  scenario 'cadastro incompleto' do
    visit new_aluno_path
    fill_in 'E-mail', :with => 'kirillsk8@gmail.com'
    fill_in 'Pai', :with => 'Sergio'
    fill_in 'Mãe', :with => 'Elena'
    fill_in 'Nacionalidade', :with => 'Brasileiro'
    select('Rio de Janeiro', :from => 'Naturalidade')
    fill_in 'Orgao emissor do rg', :with => 'Detran'
    select('Rio de Janeiro', :from => 'Estado do rg')
    click_button 'Salvar'

    page.should have_content 'Novo Aluno'
    page.should have_content 'O campo deve ser preenchido'
    page.should have_content 'O campo deve ser preenchido'
    page.should have_content 'O campo deve ser preenchido'
    page.should have_content 'O campo deve ser preenchido'
    page.should have_content 'O campo deve ser preenchido'
    page.should have_content 'O campo deve ser preenchido'
    page.should have_content 'Filiação'
    page.should have_content 'Voltar'
  end

  scenario 'certificado de reservista não é obrigatorio para estrangeiros' do
    visit new_aluno_path
    #DADOS PESSOAIS DO ALUNO
    fill_in 'Nome', :with => 'Kirill'
    fill_in 'E-mail', :with => 'kirillsk8@gmail.com'
    fill_in 'Pai', :with => 'Sergio'
    fill_in 'Mãe', :with => 'Elena'
    fill_in 'Data de nascimento', :with => '22/02/1988'
    select('Masculino', :from => 'Sexo')
    fill_in 'Nacionalidade', :with => 'Russo'
    select('Rio de Janeiro', :from => 'Naturalidade')
    select('Solteiro(a)', :from => 'Estado civil')
    #DADOS DE DOCUMENTAÇÃO DO ALUNO
    fill_in 'Cpf', :with => '12797827732'
    fill_in 'Rg', :with => '209912310'
    fill_in 'Orgao emissor do rg', :with => 'Detran'
    select('Rio de Janeiro', :from => 'Estado do rg')
    fill_in 'Data de expedicao do rg', :with => '20/09/2009'
    fill_in 'Numero do titulo de eleitor', :with => '12121212121'
    fill_in 'Zona do titulo de eleitor', :with => '98'
    fill_in 'Secao do titulo de eleitor', :with => '103'
    select('Rio de Janeiro', :from => 'Estado do titulo de eleitor')
    fill_in 'Data de emissao do titulo de eleitor', :with => '10/01/2009'
    fill_in 'Numero do certificado de reservista', :with => '324343'
    fill_in 'Orgão do Certificado de Reservista', :with => 'exercito'
    fill_in 'Categoria do certificado de reservista', :with => 'a'
    fill_in 'Data de emissao do certificado de reservista', :with => '10/02/2009'
    select('Rio de Janeiro', :from => 'Estado do certificado de reservista')
    click_button 'Salvar'
    #save_and_open_page
    page.should have_content 'Aluno cadastrado com sucesso.'
    page.should have_content 'Nome: Kirill'
    page.should have_content 'E-mail: kirillsk8@gmail.com'
    page.should have_content 'Filiação'
    page.should have_content 'Pai: Sergio'
    page.should have_content 'Mãe: Elena'
    page.should have_content 'Data de nascimento: 22/02/1988'
    page.should have_content 'Sexo: Masculino'
    page.should have_content 'Nacionalidade: Russo'
    page.should have_content 'Naturalidade: RJ'
    page.should have_content 'Estado civil: Solteiro(a)'
    page.should have_content 'CPF: 127.978.277-32'
    page.should have_content 'RG: 209912310'
    page.should have_content 'Orgão Emissor do RG: Detran'
    page.should have_content 'Estado do RG: RJ'
    page.should have_content 'Data de Expedição do RG: 20/09/2009'
    page.should have_content 'Número do Título de Eleitor: 12121212121'
    page.should have_content 'Zona do Título de Eleitor: 98'
    page.should have_content 'Seção do Título de Eleitor: 103'
    page.should have_content 'Estado do Título de Eleitor: RJ'
    page.should have_content 'Data de Emissão do Título de Eleitor: 10/01/2009'
    page.should have_content 'Número do Certificado de Reservista:'
    page.should have_content 'Orgão do Certificado de Reservista:'
    page.should have_content 'Categoria do Certificado de Reservista:'
    page.should have_content 'Data de Emissão do Certificado de Reservista:'
    page.should have_content 'Estado do Certificado de Reservista:'
    page.should have_content 'Editar'
    page.should have_content 'Voltar'
  end
end

