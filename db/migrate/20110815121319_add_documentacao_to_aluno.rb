class AddDocumentacaoToAluno < ActiveRecord::Migration
  def self.up
    add_column :alunos, :cpf, :string
    add_column :alunos, :rg, :string
    add_column :alunos, :orgao_emissor_do_rg, :string
    add_column :alunos, :estado_do_rg, :string
    add_column :alunos, :data_de_expedicao_do_rg, :date
    add_column :alunos, :numero_do_titulo_de_eleitor, :string
    add_column :alunos, :zona_do_titulo_de_eleitor, :string
    add_column :alunos, :secao_do_titulo_de_eleitor, :string
    add_column :alunos, :estado_do_titulo_de_eleitor, :string
    add_column :alunos, :data_de_emissao_do_titulo_de_eleitor, :date
    add_column :alunos, :numero_do_certificado_de_reservista, :string
    add_column :alunos, :orgao_do_certificado_de_reservista, :string
    add_column :alunos, :categoria_do_certificado_de_reservista, :string
    add_column :alunos, :data_de_emissao_do_certificado_de_reservista, :date
    add_column :alunos, :estado_do_certificado_de_reservista, :string
  end

  def self.down
    remove_column :alunos, :estado_do_certificado_de_reservista
    remove_column :alunos, :data_de_emissao_do_certificado_de_reservista
    remove_column :alunos, :categoria_do_certificado_de_reservista
    remove_column :alunos, :orgao_do_certificado_de_reservista
    remove_column :alunos, :numero_do_certificado_de_reservista
    remove_column :alunos, :data_de_emissao_do_titulo_de_eleitor
    remove_column :alunos, :estado_do_titulo_de_eleitor
    remove_column :alunos, :secao_do_titulo_de_eleitor
    remove_column :alunos, :zona_do_titulo_de_eleitor
    remove_column :alunos, :numero_do_titulo_de_eleitor
    remove_column :alunos, :data_de_expedicao_do_rg
    remove_column :alunos, :estado_do_rg
    remove_column :alunos, :orgao_emissor_do_rg
    remove_column :alunos, :rg
    remove_column :alunos, :cpf
  end
end
