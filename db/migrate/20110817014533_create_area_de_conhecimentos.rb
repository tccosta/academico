class CreateAreaDeConhecimentos < ActiveRecord::Migration
  def self.up
    create_table :area_de_conhecimentos do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :area_de_conhecimentos
  end
end
