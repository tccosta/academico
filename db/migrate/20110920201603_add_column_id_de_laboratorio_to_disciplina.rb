class AddColumnIdDeLaboratorioToDisciplina < ActiveRecord::Migration
  def self.up
    change_table :disciplinas do |t|
       t.belongs_to :laboratorio
    end
  end

  def self.down
    change_table :disciplinas do |t|
      remove_column :laboratorio_id
    end
  end
end

