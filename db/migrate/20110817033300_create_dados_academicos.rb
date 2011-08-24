class CreateDadosAcademicos < ActiveRecord::Migration
  def self.up
    create_table :dados_academicos do |t|
      t.integer :matricula
      t.string :curso
      t.integer :semestre
      t.string :forma_de_ingresso
      t.date :data_da_prova_do_ingresso
      t.boolean :cotista
      t.string :tipo_de_cota
      t.string :link_do_lattes

      t.timestamps
    end
  end

  def self.down
    drop_table :dados_academicos
  end
end
