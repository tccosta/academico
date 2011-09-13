 #coding: utf-8

require 'spec_helper.rb'

describe Aluno do
  it 'Dados do Exercito necessarios' do
    aluno = Aluno.new(:nome => "Rafael", :sexo => "masculino", :data_de_nascimento =>"1989-12-17")
    aluno.e_necessario_certificado_de_reservista?.should == true
  end

  it 'Dados do Exercito desnecessarios pois sexo do aluno eh feminino' do
    aluno = Aluno.new(:nome => "Rafael", :sexo => "feminino", :data_de_nascimento =>"1989-12-17")
    aluno.e_necessario_certificado_de_reservista?.should == false
  end

  it 'Dados do Exercito desnecessarios pois aluno nao tem idade superior a 19' do
    aluno = Aluno.new(:nome => "Rafael", :sexo => "masculino", :data_de_nascimento =>"1993-12-17")
    aluno.e_necessario_certificado_de_reservista?.should == false
  end

  it 'So aceita e-mails validos' do
      should have_valid(:email).when('tiagocosta@uenf.br')
      should have_valid(:email).when('tiagocosta@bol.com.br')
      should have_valid(:email).when('tiago_costa@uenf.br')
      should have_valid(:email).when('tiago-costa@uenf.br')
      should have_valid(:email).when('tiago55362costa@uenf.br')
  end

  it 'Nao aceita espacos nos emails' do
    should_not have_valid(:email).when('tiago costa@gmail.com')
  end

  it 'Nao aceita email sem dominio' do
    should_not have_valid(:email).when('tiago costa@.com')
    should_not have_valid(:email).when('tiago costa@gmail')
  end

  it 'Nao aceita data impossivel' do
    should_not have_valid(:data_de_nascimento).when('32/01/1999')
    should_not have_valid(:data_de_expedicao_do_rg).when('33/01/1999')
  end

  it 'Aceita data válida' do
    should have_valid(:data_de_nascimento).when('22/01/1999')
    should have_valid(:data_de_expedicao_do_rg).when('22/02/1999')
    should have_valid(:data_de_emissao_do_titulo_de_eleitor).when('19/01/1999')
    should have_valid(:data_de_emissao_do_certificado_de_reservista).when('14/01/1999')
  end

  it 'Nao aceita data de emissão de certificado de reservista invalida' do
    aluno = FactoryGirl.build(:aluno)
       aluno.data_de_emissao_do_certificado_de_reservista = '99/20/1999'
       aluno.data_de_emissao_do_certificado_de_reservista.should == nil
  end

  it 'Nao aceita data de emissão de titulo de eleitor invalida' do
    aluno = FactoryGirl.build(:aluno)
       aluno.data_de_emissao_do_titulo_de_eleitor = '99/20/1999'
       aluno.data_de_emissao_do_titulo_de_eleitor.should == nil
  end
end

