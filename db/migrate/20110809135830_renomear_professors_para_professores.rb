class RenomearProfessorsParaProfessores < ActiveRecord::Migration
  def self.up
    rename_table :professors, :professores
  end

  def self.down
    rename_table :professores, :professors
  end
end

