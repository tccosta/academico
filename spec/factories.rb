#encoding: utf-8

FactoryGirl.define do
  factory :professor do
   nome 'Annabell'
   matricula '12345'
   tipo 'Titular'
   area_de_conhecimento 'Computação'
   sub_area_de_conhecimento 'Matematica'
   lattes "http://"
  end

  factory :horario do
   dia_da_semana 'Terça-feira'
   hora_de_inicio '10:00'
   hora_de_fim '12:00'
  end

  factory :centro do
    nome 'Centro de Ciência e Tecnologia'
    sigla 'CCT'
  end

  factory :laboratorio do
    nome 'Laboratório de Ciências Matemáticas'
    sigla 'LCMAT'
    association :centro
  end

  factory :curso do
    nome 'Ciência da Computação'
    sigla 'CCI'
    duracao 10
    association :professor
    association :laboratorio
  end

  factory :disciplina do
    codigo 'COMP0112'
    nome 'Desenvolvimento Ágil'
    creditos '3'
    carga_horaria '30'
    numero_maximo_de_aluno '25'
  end

  factory :turma do
    semestre_letivo '2011-2'
    codigo 'A'
    numero '01'
    association :disciplina
    association :professor
  end

  factory :aluno do
    nome 'Kirill Lassounski'
    email 'kirillsk8@gmail.com'
    pai 'Sergio'
    mae 'Elena'
    sexo 'Masculino'
    data_de_nascimento '22/02/1988'
    nacionalidade 'Brasileiro'
    naturalidade 'Russia'
    estado_civil 'Solteiro(a)'
    cpf '05998813723'
    #RG
    rg '12345678'
    orgao_emissor_do_rg 'DETRAN'
    data_de_expedicao_do_rg '23/02/2010'
    estado_do_rg 'Rio de Janeiro'
    data_de_emissao_do_certificado_de_reservista '30/06/2011'
    numero_do_titulo_de_eleitor '12345'
    estado_do_titulo_de_eleitor 'RJ'
    numero_do_certificado_de_reservista '12233232'
    categoria_do_certificado_de_reservista 'ab'
    orgao_do_certificado_de_reservista 'trt'
    estado_do_certificado_de_reservista 'RJ'
    matricula '108123928'
    association :curso
    semestre '201102'
    forma_de_ingresso 'Vestibular'
    data_da_prova_do_ingresso '22/12/2010'
    cotista true
    tipo_de_cota 'Ensino Público'
    link_do_lattes 'http://lattes.cnpq.br/1619508753128532'
  end
end

