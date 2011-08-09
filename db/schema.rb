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

ActiveRecord::Schema.define(:version => 20110809135830) do

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
