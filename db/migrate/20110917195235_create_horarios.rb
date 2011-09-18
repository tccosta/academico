class CreateHorarios < ActiveRecord::Migration
  def self.up
    create_table :horarios do |t|
      t.string :dia_da_semana
      t.time :hora_de_inicio
      t.time :hora_de_fim
      t.belongs_to :turma

      t.timestamps
    end
  end

  def self.down
    drop_table :horarios
  end
end

