class RemoveHorarioFromTurmas < ActiveRecord::Migration
  def self.up
    remove_column :turmas, :horario
  end

  def self.down
    add_column :turmas, :horario, :time
  end
end
