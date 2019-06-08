class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.integer :clienteId
      t.string :nome
      t.string :descricao
      t.boolean :status

      t.timestamps
    end
  end
end
