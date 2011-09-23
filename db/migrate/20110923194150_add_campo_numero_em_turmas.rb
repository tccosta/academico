class AddCampoNumeroEmTurmas < ActiveRecord::Migration
  def self.up
    add_column :turmas, :numero, :integer
  end

  def self.down
    remove_column :turmas, :numero
  end
end

