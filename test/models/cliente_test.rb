require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
  test 'Cliente criado com sucesso' do
    clienteTeste = Cliente.new(nome: 'Victor', cpf: '10220919488', fone: '81995329874')
    assert clienteTeste.save, "Cliente salvo."
  end

  test 'Cliente nao deve ser criado sem nome' do
    clienteTeste1 = Cliente.new(nome: '', cpf: '10220919488', fone: '81995329874')
    assert_not clienteTeste1.save, "Nome do cliente nao informado."
  end

  test 'Cliente nao deve ser criado com cpf incorreto' do
    clienteTeste2 = Cliente.new(nome: 'Victor', cpf: '10254', fone: '81995329874')
    assert_not clienteTeste2.save, "Cliente com CPF incorreto."
  end
end
