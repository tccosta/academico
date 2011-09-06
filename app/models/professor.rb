class Professor < ActiveRecord::Base
	belongs_to :curso

  validates_presence_of :nome, :msg => "O campo nome deve ser preenchido"
  validates_presence_of :matricula, :msg => "O campo matricula deve ser preenchido"
  validates_presence_of :tipo, :msg => "O campo tipo deve ser preenchido"
  validates_presence_of :area_de_conhecimento, :msg => "O campo Area de conhecimento deve ser preenchido"
  validates_presence_of :sub_area_de_conhecimento, :msg => "O campo Sub area de conhecimento deve ser preenchido"
  validates_presence_of :lattes, :msg => "O campo lattes deve ser preenchido"
end

