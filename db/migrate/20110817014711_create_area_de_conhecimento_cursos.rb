class CreateAreaDeConhecimentoCursos < ActiveRecord::Migration
  def self.up
    create_table :area_de_conhecimento_cursos do |t|
      t.integer :curso_id
      t.integer :area_de_conhecimento_id

      t.timestamps
    end
  end

  def self.down
    drop_table :area_de_conhecimento_cursos
  end
end
