class AreaDeConhecimentoCurso < ActiveRecord::Base
	belongs_to :curso
	belongs_to :area_de_conhecimento
end
