 #encoding utf-8

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

end

