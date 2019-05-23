Feature: Estoque
    As an administrador do sistema Big-Cell
    I want to adicionar, alterar e ver um produto no estoque
    so that irei testar essas funções automaticamente

Scenario: adicionar produto no estoque
    Given Eu abro a pagina inicial do estoque
    When Eu crio o produto com nome "Xiaomi Mi 8 lite" com quantidade "0" e com preço "1000.00"
    Then Eu vejo que o produto de nome "Xiaomi Mi 8 lite" foi salvo

Scenario: alterar produto no estoque
    Given Eu abro a pagina inicial do estoque
    And Eu vejo o produto com nome "Xiaomi Mi 8 lite"
    When Eu clico no nome "Xiaomi Mi 8 lite"
    And Eu vejo botao alterar na tela do produto e clico em alterar
    Then Eu altero o preco "1000.0" para "1100.0"
    And Eu vejo uma mensagem de que "Alteracao salva"


