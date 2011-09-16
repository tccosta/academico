class AddColumnIdDeCentroToLaboratorio < ActiveRecord::Migration
  def self.up
    change_table :laboratorios do |t|
       t.belongs_to :centro
     end
  end

  def self.down
    change_table :laboratorios do |t|
      remove_column :centro_id
    end
  end
end

