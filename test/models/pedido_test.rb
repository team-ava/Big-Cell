require 'test_helper'

class PedidoTest < ActiveSupport::TestCase
  test 'Pedido criado com sucesso' do
    pedidoTeste = Pedido.new(clienteId: 5, nome: 'Concerto Mi 8 Lite', descricao: "Tela com defeito", status: false)
    assert pedidoTeste.save, "Produto salvo."
  end
  
  test 'Pedido nao pode ser criado sem nome' do
    pedidoTeste = Pedido.new(clienteId: 5, nome: '', descricao: "Tela com defeito", status: false)
    assert_not pedidoTeste.save, "Nome do pedido nao informado."
  end

  test 'Pedido nao pode ser criado sem descricao' do
    pedidoTeste = Pedido.new(clienteId: 5, nome: 'Concerto Mi 8 Lite', descricao: "", status: false)
    assert_not pedidoTeste.save, "Descricao do pedido nao informada."
  end
end
