require 'test_helper'

class VendaTest < ActiveSupport::TestCase
  test 'Venda criado com sucesso' do
    vendaTeste = Venda.new(clienteId: 5, produtoId: 3, valorServico: 1.5)
    assert vendaTeste.save, "Venda salva."
  end

  test 'Venda nao deve ser criada sem produto' do
    vendaTeste = Venda.new(clienteId: 5, produtoId: "", valorServico: 1.5)
    assert_not vendaTeste.save, "Produto de venda nao informado."
  end

  test 'Venda nao deve ser criada sem cliente' do
    vendaTeste = Venda.new(clienteId: "", produtoId: 3, valorServico: 1.5)
    assert_not vendaTeste.save, "Cliente de venda nao informado."
  end
end
