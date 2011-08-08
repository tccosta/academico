class CreateProfessors < ActiveRecord::Migration
  def self.up
    create_table :professors do |t|
      t.string :nome
      t.string :matricula
      t.string :tipo
      t.string :area_de_conhecimento
      t.string :sub_area_de_conhecimento
      t.string :lattes

      t.timestamps
    end
  end

  def self.down
    drop_table :professors
  end
end
