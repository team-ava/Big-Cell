Feature: Produto
    As an administrador do sistema Big-Cell
    I want to adicionar, alterar e ver um produto
    so that irei testar essas funções automaticamente

Scenario: adicionar produto
    Given Eu abro a pagina inicial
    And Eu clico no botao adicinar produto
    When Eu crio o produto com nome "Xiaomi Mi 8 lite" com quantidade "0" e com preço "1000.00"
    Then Eu vejo que o produto de nome "Xiaomi Mi 8 lite" foi salvo

Scenario: alterar produto
    Given Eu abro a pagina inicial
    And Eu vejo o produto com nome "Xiaomi Mi 8 lite"
    When Eu clico no nome "Xiaomi Mi 8 lite"
    And Eu clico botao alterar na tela do produto
    Then Eu altero o preco "1000.0" para "1100.0"
    And Eu vejo uma mensagem de que "Alteracao salva"

Scenario: remover produto
    Given Eu abro a pagina inicial
    And Eu vejo o produto com nome "Xiaomi Mi 8 lite"
    When Eu clico no nome "Xiaomi Mi 8 lite"
    And Eu clico o botao deletar na tela do produto
    Then Eu vejo uma mensagem de que "Produto retirado"

Scenario: adicionar produto com espaço nao preenchido
    Given Eu abro a pagina inicial
    And Eu clico no botao adicinar produto
    When Eu crio o produto com nome "Xiaomi Mi 8 lite" com quantidade "0" e com preço ""
    Then Eu vejo uma mensagem de que "Nao foi possivel salvar o produto! Tente novamente"

Scenario: adicinar produto com nome invalido
    Given Eu abro a pagina inicial
    And Eu clico no botao adicinar produto
    When Eu crio o produto com nome "S8" quantidade "0" e com preco "2000.0"
    Then Eu vejo uma mensagem de que "Nome do produto eh muito curto! Tentar novamente"