class CreateVendas < ActiveRecord::Migration[5.2]
  def change
    create_table :vendas do |t|
      t.references :produto, foreign_key: true
      t.references :cliente, foreign_key: true
      t.float :valorServico

      t.timestamps
    end
  end
end
