class CreateFormacoes < ActiveRecord::Migration
  def self.up
    create_table :formacoes do |t|
      t.string :instituicao
      t.string :tipo
      t.integer :ano_de_inicio
      t.integer :ano_de_conclusao
      t.string :area_de_conhecimento
      t.string :titulo_trabalho_de_conclusao
      t.string :orientador

      t.timestamps
    end
  end

  def self.down
    drop_table :formacoes
  end
end
