#coding: utf-8

#require 'spec_helper'

#feature 'Horario' do
#  scenario 'cadastrar horario' do
#    visit new_horario_path
#    select('Terça-feira', :from => 'Dia da semana')
#    select('10', :from => 'horario_hora_de_inicio_4i')
#    select('00', :from => 'horario_hora_de_inicio_5i')
#    select('12', :from => 'horario_hora_de_fim_4i')
#    select('30', :from => 'horario_hora_de_fim_5i')
#    click_button 'Salvar'

#    page.should have_content 'Dia da semana: Terça-feira'
#    page.should have_content 'Hora de início: 10:00'
#    page.should have_content 'Hora de fim: 12:30'
#  end

#  scenario 'deve gerar erro ao cadastrar hora de fim antes de hora de início' do
#    visit new_horario_path
#    select('Terça-feira', :from => 'Dia da semana')
#    select('10', :from => 'horario_hora_de_inicio_4i')
#    select('00', :from => 'horario_hora_de_inicio_5i')
#    select('09', :from => 'horario_hora_de_fim_4i')
#    select('30', :from => 'horario_hora_de_fim_5i')
#    click_button 'Salvar'

#    page.should have_content 'Hora de fim deve ser após hora de início'
#  end
#end

