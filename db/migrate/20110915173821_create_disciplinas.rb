class CreateDisciplinas < ActiveRecord::Migration
  def self.up
    create_table :disciplinas do |t|
      t.string :codigo
      t.string :nome
      t.integer :creditos
      t.integer :carga_horaria
      t.integer :numero_maximo_de_aluno

      t.timestamps
    end
  end

  def self.down
    drop_table :disciplinas
  end
end
