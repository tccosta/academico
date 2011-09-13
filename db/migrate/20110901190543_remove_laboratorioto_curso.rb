class RemoveLaboratoriotoCurso < ActiveRecord::Migration
  def self.up
    remove_column :cursos, :laboratorio
  end

  def self.down
    add_column :cursos, :laboratorio, :string
  end
end

