class CreateCentros < ActiveRecord::Migration
  def self.up
    create_table :centros do |t|
      t.string :nome
      t.string :sigla

      t.timestamps
    end
  end

  def self.down
    drop_table :centros
  end
end
