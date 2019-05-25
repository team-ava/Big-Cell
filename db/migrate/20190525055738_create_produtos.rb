class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.float :preco
      t.string :tipo
      t.integer :quantidade

      t.timestamps
    end
  end
end
