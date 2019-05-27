Feature: Produto
    As an administrador do sistema Big-Cell
    I want to adicionar, alterar e ver um produto
    so that irei testar essas funções automaticamente

Scenario: adicionar produto
    Given Eu abro a pagina inicial de cadastro de produto
    When Eu crio o produto com nome "Xiaomi Mi 8 lite", com quantidade "0", com preço "1000.00" e com tipo "Celular"
    Then Eu vejo que o produto foi salvo com sucesso.

Scenario: editar produto
    Given Eu abro a pagina de informacoes do produto
    When Eu abro a pagina do produto "Xiaomi Mi 8 Lite"
    And Eu altero o preco de "1000.0" para "1100.0"
    Then Eu vejo uma mensagem de que a alteracao foi realizada com sucesso

Scenario: remover produto
    Given Eu abro a pagina de informacoes do produto
    When Eu seleciono a opcao de remover do produto "Xiaomi Mi 8 Lite"
    Then Eu vejo uma mensagem de que o produto foi removido com sucesso

Scenario: adicionar produto com espaço nao preenchido
    Given Eu abro a pagina inicial
    And Eu clico no botao adicionar produto
    When Eu crio o produto com nome "Xiaomi Mi 8 lite" com quantidade "0" e com preço vazio
    Then Eu vejo uma mensagem infomando quantidade invalida

Scenario: adicinar produto com nome invalido
    Given Eu abro a pagina inicial
    And Eu clico no botao adicinar produto
    When Eu crio o produto com nome "S8" quantidade "10" e com preco "2000.0"
    Then Eu vejo uma mensagem informando nome incorreto
