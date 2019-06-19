require 'test_helper'

class ProdutoTest < ActiveSupport::TestCase
  test 'Produto criado com sucesso' do
    produtoTeste = Produto.new(nome: 'Samsung S8', preco: 1500.00, tipo: "Celular", quantidade: 5)
    assert produtoTeste.save, "Produto salvo."
  end

  test 'Produto nao deve ser criado sem nome' do
    produtoTeste = Produto.new(nome: '', preco: 1500.00, tipo: "Celular", quantidade: 5)
    assert_not produtoTeste.save, "Nome do produto nao informado."
  end


  test 'Produto nao deve ser criado sem tipo' do
    produtoTeste = Produto.new(nome: 'Samsung S8', preco: 1500.00, tipo: "", quantidade: 5)
    assert_not produtoTeste.save, "Tipo do produto nao informado."
  end
end
