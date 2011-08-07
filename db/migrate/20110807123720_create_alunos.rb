class CreateAlunos < ActiveRecord::Migration
  def self.up
    create_table :alunos do |t|
      t.string :nome
      t.string :email
      t.string :pai
      t.string :mae
      t.date :data_de_nascimento
      t.string :sexo
      t.string :nacionalidade
      t.string :naturalidade
      t.string :estado_civil

      t.timestamps
    end
  end

  def self.down
    drop_table :alunos
  end
end
