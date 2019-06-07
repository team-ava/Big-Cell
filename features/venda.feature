Feature: CRUD Venda
  As am administrador do sistema Big-Cell
  I want criar, atualizar, e remover dados de venda
  So that um cadastro de venda e realizado

  Scenario: criar venda com sucesso
    Given Eu tenho um produto com nome "Xiaomi Mi 8 lite", com quantidade "1", com preco "1000.00" e com tipo "Celular"
    And Eu tenho um cliente com nome "Victor Raffaele", cpf "102.209.194-88" e telefone "83995369280"
    And Eu abro a pagina de cadastrar venda
    When Eu cadastro a venda com o cliente com nome "Victor Raffaele", o produto "Xiomi Mi 8 Lite" e o preço de servico "150.00"
    Then Eu vejo que a venda foi realizada com sucesso

  Scenario: criar venda com cliente vazio
    Given Eu tenho um produto com nome "Xiaomi Mi 8 lite", com quantidade "1", com preco "1000.00" e com tipo "Celular"
    And Eu abro a pagina de cadastrar venda
    When Eu cadastro a venda com o cliente "", o produto "Xiomi Mi 8 Lite" e o preco de servico "150.00"
    Then Eu vejo uma mensagem informando que o cliente referente a venda esta vazio.

  Scenario: criar venda com produto vazio
    Given Eu tenho um cliente com nome "Victor Raffaele", cpf "102.209.194-88" e telefone "83995369280"
    And Eu abro a pagina de cadastrar venda
    When Eu cadastro a venda com o cliente "Victor Raffaele", o produto "" e o preco de servico "150.00"
    Then Eu vejo uma mensagem informando que o produto referente a venda esta vazio.

  Scenario: criar venda com preco de servico inválido
    Given Eu tenho um produto com nome "Xiaomi Mi 8 lite", com quantidade "1", com preco "1000.00" e com tipo "Celular"
    And Eu tenho um cliente com nome "Victor Raffaele", cpf "102.209.194-88" e telefone "83995369280"
    And Eu abro a pagina de cadastrar venda
    When Eu cadastro a venda com o cliente "Victor Raffaele", o produto "Xiomi Mi 8 Lite" e o preco de servico "a"
    Then Eu vejo uma mensagem informando que o preco referente a venda esta vazio.

  Scenario: criar venda com preco de servico com valor incoerente
    Given Eu tenho um produto com nome "Xiaomi Mi 8 lite", com quantidade "1", com preco "1000.00" e com tipo "Celular"
    And Eu tenho um cliente com nome "Victor Raffaele", cpf "102.209.194-88" e telefone "83995369280"
    And Eu abro a pagina de cadastrar venda
    When Eu cadastro a venda com o cliente "", o produto "LG K10" e o preço de servico "999999999.00"
    Then Eu vejo uma mensagem informando que o produto nao existe em estoque