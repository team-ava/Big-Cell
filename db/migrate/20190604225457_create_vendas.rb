class CreateVendas < ActiveRecord::Migration[5.1]
  def change
    create_table :vendas do |t|
      t.integer :clienteId
      t.integer :produtoId
      t.float :valorServico
      t.float :valorTotal

      t.timestamps
    end
  end
end
