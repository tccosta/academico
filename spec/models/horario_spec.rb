 #coding: utf-8

require 'spec_helper.rb'

describe Horario do

  it 'deve cadastrar um horario válido' do
    horario = Horario.new
    horario.dia_da_semana = 'terça-feira'
    horario.hora_de_inicio = Time.now
    horario.hora_de_fim = Time.now+1000
    horario.valid?.should == true
  end

  it 'não deve cadastrar um horario final anterior ao horário inicial' do
    horario = Horario.new
    horario.dia_da_semana = 'terça-feira'
    horario.hora_de_inicio = Time.now
    horario.hora_de_fim = Time.now-1000
    horario.valid?.should == false
  end
end

