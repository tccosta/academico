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

end
