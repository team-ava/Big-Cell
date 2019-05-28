class CreateVendas < ActiveRecord::Migration[5.1]
  def change
    create_table :vendas do |t|
      t.float :valorProduto
      t.float :valorServico

      t.timestamps
    end
  end
end
