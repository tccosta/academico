class Aluno < ActiveRecord::Base

  has_and_belongs_to_many :turmas
  belongs_to :curso
  has_many :formacoes

  camposMasc = { :nome => "Nome", :pai => "Pai" ,:mae => "Mae",:sexo => "Sexo",:estado_civil => "Estado Civil", :cpf => "CPF", :rg => "RG", :orgao_emissor_do_rg => "Orgao Emissor do RG", :estado_do_rg => "Estado do RG" }
  camposMasc.each { |campo| validates campo[0], :presence => { :message => campo[1] + ' - deve ser preenchido.'}}
  camposFem = {:data_de_nascimento => "Data de Nascimento",:nacionalidade => "Nacionalidade" ,:naturalidade => "Naturalidade",:data_de_expedicao_do_rg => "Data de Expedicao do RG"}
  camposFem.each { |campo| validates campo[0], :presence => { :message => campo[1] + ' - deve ser preenchida.'}}
  camposTitulodeEleitor = {:numero_do_titulo_de_eleitor => "Numero do titulo de eleitor", :estado_do_titulo_de_eleitor => "Estado do titulo de eleitor" }
  camposTitulodeEleitor.each { |campo| validates campo[0], :presence => { :message => campo[1] + ' - deve ser preenchido.'}, :if => :e_necessario_certificado_de_reservista?, :unless => :new_record?}

  camposCertificadodeReservista = {
    :numero_do_certificado_de_reservista => "Numero do certificado de reservista",
    :data_de_emissao_do_certificado_de_reservista => "Data do certificado de reservista",
    :categoria_do_certificado_de_reservista => "Categoria do certificado de reservista",
    :orgao_do_certificado_de_reservista => "Orgao do certificado de reservista",
    :estado_do_certificado_de_reservista => "Estado do certificado de reservista"
 }
  camposCertificadodeReservista.each {|campo| validates campo[0], :presence => { :message => campo[1] + ' - deve ser preenchido.'}, :if => :e_necessario_certificado_de_reservista?, :unless => :new_record?}
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i , :message => ' invalido'}

  SEXO = ['Masculino','Feminino']
  ESTADO_CIVIL = ['Solteiro(a)','Casado(a)','Separado(a)','Divorciado(a)','Viuvo(a)']
  usar_como_cpf :cpf

  def e_necessario_certificado_de_reservista?
    return false if data_de_nascimento.blank?
    age = Date.today.year - data_de_nascimento.year
    age -= 1 if Date.today < data_de_nascimento + age.years #for days before birthday

    if (age >= 19) and sexo.capitalize == "Masculino"
      true
    else
      false
    end

  end

end

