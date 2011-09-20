class AdicionarCodigoATurma < ActiveRecord::Migration
  def self.up
    add_column :turmas, :codigo, :string, :limit => 1
  end

  def self.down
    remove_column :turmas, :codigo
  end
end
