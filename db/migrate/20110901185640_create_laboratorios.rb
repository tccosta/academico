class CreateLaboratorios < ActiveRecord::Migration
  def self.up
    create_table :laboratorios do |t|
      t.string :nome
      t.string :sigla
      t.has_many :cursos

      t.timestamps
    end
  end

  def self.down
    drop_table :laboratorios
  end
end
