class RemoveLaboratoriotoCurso < ActiveRecord::Migration
  def self.up
    remove_column :curso, :laboratorio
  end

  def self.down
    add_column :curso, :laboratorio, :string
  end
end
