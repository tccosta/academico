class AddDadosAcademicosToAluno < ActiveRecord::Migration
def self.up
  add_column :alunos, :matricula, :integer
  add_column :alunos, :curso_id, :integer
  add_column :alunos, :semestre, :integer
  add_column :alunos, :forma_de_ingresso, :string
  add_column :alunos, :data_da_prova_do_ingresso, :date
  add_column :alunos, :cotista , :boolean
  add_column :alunos, :tipo_de_cota , :string
  add_column :alunos, :link_do_lattes, :string

end
def self.down
  remove_column :alunos, :matricula
  remove_column :alunos, :curso_id
  remove_column :alunos, :semestre
  remove_column :alunos, :forma_de_ingresso
  remove_column :alunos, :data_da_prova_do_ingresso
  remove_column :alunos, :cotista
  remove_column :alunos, :tipo_de_cota
  remove_column :alunos, :link_do_lattes
end

end

