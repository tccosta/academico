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

ActiveRecord::Schema.define(:version => 20110815121319) do

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

end
