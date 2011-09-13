class RemoveCursoIdFromProfessor < ActiveRecord::Migration
  def self.up
    remove_column :professores, :curso_id
  end

  def self.down
    add_column :professores, :curso_id, :integer
  end
end
