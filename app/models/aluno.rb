class Aluno < ActiveRecord::Base
  has_many:formacoes
  belongs_to:curso

  validates_presence_of :nome, :pai, :mae, :sexo, :estado_civil, :cpf, :rg, :orgao_emissor_do_rg, :estado_do_rg, 
                        :data_de_nascimento ,:nacionalidade ,:naturalidade ,:data_de_expedicao_do_rg, 
                        :numero_do_titulo_de_eleitor, :estado_do_titulo_de_eleitor
   validates_presence_of :numero_do_certificado_de_reservista, :data_de_emissao_do_certificado_de_reservista, 
                         :categoria_do_certificado_de_reservista, :orgao_do_certificado_de_reservista, 
                         :estado_do_certificado_de_reservista, 
                         :if => :e_necessario_certificado_de_reservista?, :unless => :new_record?

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

