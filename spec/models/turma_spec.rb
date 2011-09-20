 #coding: utf-8

require 'spec_helper.rb'

describe Turma do
  it 'pode possuir vários horários' do
    professor = FactoryGirl.build(:professor)
    disciplina = FactoryGirl.build(:disciplina)
    t = Turma.new
    t.professor = professor
    t.disciplina = disciplina
    t.semestre_letivo = '1'

    horario1 = FactoryGirl.build(:horario)
    horario2 = FactoryGirl.build(:horario)
    t.horarios << horario1
    t.horarios << horario2

    t.horarios.size == 2
  end
end

