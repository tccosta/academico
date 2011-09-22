# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110920201603) do

  create_table "alunos", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "pai"
    t.string   "mae"
    t.date     "data_de_nascimento"
    t.string   "sexo"
    t.string   "nacionalidade"
    t.string   "naturalidade"
    t.string   "estado_civil"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cpf"
    t.string   "rg"
    t.string   "orgao_emissor_do_rg"
    t.string   "estado_do_rg"
    t.date     "data_de_expedicao_do_rg"
    t.string   "numero_do_titulo_de_eleitor"
    t.string   "zona_do_titulo_de_eleitor"
    t.string   "secao_do_titulo_de_eleitor"
    t.string   "estado_do_titulo_de_eleitor"
    t.date     "data_de_emissao_do_titulo_de_eleitor"
    t.string   "numero_do_certificado_de_reservista"
    t.string   "orgao_do_certificado_de_reservista"
    t.string   "categoria_do_certificado_de_reservista"
    t.date     "data_de_emissao_do_certificado_de_reservista"
    t.string   "estado_do_certificado_de_reservista"
    t.integer  "matricula"
    t.integer  "curso_id"
    t.integer  "semestre"
    t.string   "forma_de_ingresso"
    t.date     "data_da_prova_do_ingresso"
    t.boolean  "cotista"
    t.string   "tipo_de_cota"
    t.string   "link_do_lattes"
  end

  create_table "alunos_turmas", :id => false, :force => true do |t|
    t.integer "turma_id"
    t.integer "aluno_id"
  end

  create_table "area_de_conhecimento_cursos", :force => true do |t|
    t.integer  "curso_id"
    t.integer  "area_de_conhecimento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "area_de_conhecimentos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "centros", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cursos", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
	t.string   "laboratorio"
    t.integer  "duracao"
    t.integer  "professor_id"
    t.integer  "laboratorio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dados_academicos", :force => true do |t|
    t.integer  "matricula"
    t.string   "curso"
    t.integer  "semestre"
    t.string   "forma_de_ingresso"
    t.date     "data_da_prova_do_ingresso"
    t.boolean  "cotista"
    t.string   "tipo_de_cota"
    t.string   "link_do_lattes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disciplinas", :force => true do |t|
    t.string   "codigo"
    t.string   "nome"
    t.integer  "creditos"
    t.integer  "carga_horaria"
    t.integer  "numero_maximo_de_aluno"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "laboratorio_id"
  end

  create_table "formacoes", :force => true do |t|
    t.string   "instituicao"
    t.string   "tipo"
    t.integer  "ano_de_inicio"
    t.integer  "ano_de_conclusao"
    t.string   "area_de_conhecimento"
    t.string   "titulo_trabalho_de_conclusao"
    t.string   "orientador"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "aluno_id"
  end

  create_table "horarios", :force => true do |t|
    t.string   "dia_da_semana"
    t.time     "hora_de_inicio"
    t.time     "hora_de_fim"
    t.integer  "turma_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "laboratorios", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "centro_id"
  end

  create_table "professores", :force => true do |t|
    t.string   "nome"
    t.string   "matricula"
    t.string   "tipo"
    t.string   "area_de_conhecimento"
    t.string   "sub_area_de_conhecimento"
    t.string   "lattes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turmas", :force => true do |t|
    t.string   "semestre_letivo"
    t.integer  "professor_id"
    t.integer  "disciplina_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "codigo",          :limit => 1
  end

end
