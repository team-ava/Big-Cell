Feature: Produto
    As an administrador do sistema Big-Cell
    I want to adicionar, alterar e ver um produto
    so that irei testar essas funções automaticamente

Scenario: adicionar produto com sucesso
    Given Eu abro a pagina inicial de cadastro de produto
    When Eu crio o produto com nome "Xiaomi Mi 8 lite", com quantidade "1", com preco "1000.00" e com tipo "Celular"
    Then Eu vejo que o produto foi salvo com sucesso.

Scenario: editar produto com sucesso
    Given Eu abro a pagina inicial de cadastro de produto
    When Eu crio o produto com nome "Xiaomi Mi 8 lite", com quantidade "1", com preco "1000.00" e com tipo "Celular"
    And Eu entro na pagina do produto com nome "Xiaomi Mi 8 lite"
    And Eu altero o preco para "1100.0"
    Then Eu vejo uma mensagem de que a alteracao foi realizada com sucesso

Scenario: remover produto com sucesso
    Given Eu abro a pagina inicial de cadastro de produto
    When Eu crio o produto com nome "Xiaomi Mi 8 lite", com quantidade "0", com preco "1000.00" e com tipo "Celular"
    And Eu removo produto com nome "Xiaomi Mi 8 lite"
    Then Eu vejo uma mensagem de que o produto foi removido com sucesso

Scenario: adicionar produto com nome vazio
    Given Eu abro a pagina inicial de cadastro de produto
    When Eu crio o produto com nome "", com quantidade "1", com preco "1000.00" e com tipo "Celular"
    Then Eu vejo que o nome deve ser preenchido.

Scenario: adicinar produto com nome menor que o permitido
    Given Eu abro a pagina inicial de cadastro de produto
    When Eu crio o produto com nome "S8", com quantidade "0", com preco "1000.00" e com tipo "Celular"
    Then Eu vejo uma mensagem de que o nome do produto esta com poucas letras
