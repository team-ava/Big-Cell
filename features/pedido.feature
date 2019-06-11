Feature: CRUD Pedido
  As am administrador do sistema Big-Cell
  I want criar, atualizar e relatar dados do sistema
  So that um novo pedido e realizado

  Scenario: Cadastrar pedido com sucesso
    Given Eu tenho um cliente com nome "Victor Raffaele", cpf "102.209.194-88" e telefone "83995369280"
    And Eu abro a pagina de cadastro de pedido
    When Eu abro um pedido com o nome "Conserto Mi 8 Lite", descricao "Problemas na camera" e com cliente "Victor Raffaele".
    Then Eu vejo que o pedido foi aberto com sucesso.

  Scenario: Cancelar pedido com sucesso 
    Given Eu tenho um cliente com nome "Victor Raffaele", cpf "102.209.194-88" e telefone "83995369280"
    And Eu abro a pagina de cadastro de pedido
    When Eu abro um pedido com o nome "Conserto Mi 8 Lite", descricao "Problemas na camera" e com cliente "Victor Raffaele".
    And Eu deleto o pedido
    Then Eu vejo que o pedido foi cancelado com sucesso.

  Scenario: Mudar status com sucesso
    Given Eu tenho um cliente com nome "Victor Raffaele", cpf "102.209.194-88" e telefone "83995369280"
    And Eu abro a pagina de cadastro de pedido
    When Eu abro um pedido com o nome "Conserto Mi 8 Lite", descricao "Problemas na camera" e com cliente "Victor Raffaele".
    And Eu altero o status de pedido para concluido
    Then Eu vejo que o status foi alterado com sucesso.

  Scenario: Abrir pedido com cliente vazio
    Given Eu abro a pagina de cadastro de pedido
    When Eu abro um pedido com nome "Conserto Mi 8 Lite" e descricao "Poblema com o touch"
    Then Eu vejo uma mensagem informando que o cliente referente ao pedido esta vazio.

  Scenario: Abrir pedido com nome vazio
    Given Eu tenho um cliente com nome "Victor Raffaele", cpf "102.209.194-88" e telefone "83995369280"
    And Eu abro a pagina de cadastro de pedido
    When Eu abro um pedido com o nome "", descricao "Problemas na camera" e com cliente "Victor Raffaele".
    Then Eu vejo uma mensagem informando nome esta vazio