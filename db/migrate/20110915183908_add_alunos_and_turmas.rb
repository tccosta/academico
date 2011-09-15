class AddAlunosAndTurmas < ActiveRecord::Migration
  def self.up
    create_table :alunos_turmas, :id => false do |t|
      t.references :turma, :aluno
    end
  end

  def self.down
    drop_table :alunos_turmas
  end
end

