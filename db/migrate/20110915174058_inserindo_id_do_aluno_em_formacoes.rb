class InserindoIdDoAlunoEmFormacoes < ActiveRecord::Migration
  def self.up
    change_table :formacoes do |t|
       t.belongs_to :aluno
     end
  end

  def self.down
    change_table :formacoes do |t|
      remove_column :aluno_id
    end
  end
end

