class CreateCursos < ActiveRecord::Migration
  def self.up
    create_table :cursos do |t|
      t.string :nome
      t.string :sigla
      t.string :laboratorio
      t.integer :duracao
  	  t.references :professor
      t.references :laboratorio   

      t.timestamps
    end
  end

  def self.down
    drop_table :cursos
  end
end
