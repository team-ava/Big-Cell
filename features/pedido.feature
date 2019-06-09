Feature: CRUD Pedido
  As am administrador do sistema Big-Cell
  I want criar, atualizar e relatar dados do sistema
  So that um novo pedido e realizado

  Scenario: Abrir pedido
    Given Eu abro a pagina de cadastro de pedido
    When Eu abro um pedido com o cliente "Victor", o nome "Conserto Mi 8 Lite" e descricao "Problemas na camera".
    Then Eu vejo que o pedido foi aberto com sucesso.

  Scenario: Cancelar pedido
    Given Eu abro a pagina de gerenciamento de pedido
    When Eu seleciono a opcao de cancelamento do pedido do cliente "Victor"
    Then Eu vejo que o pedido foi cancelado com sucesso.

  Scenario: Mudar status
    Given Eu abro a pagina de gerenciamento de pedido
    When Eu seleciono a opcao de alterar status de "nao concluido" para "concluido"
    Then Eu vejo que o status foi alterado com sucesso.

  Scenario: Abrir pedido com cliente inexistente
    Given Eu abro a pagina de cadastro de pedido
    When Eu abro um pedido com o nome "Andre", com nome "Conserto Mi 8 Lite" e descricao "Poblema com o touch"
    Then Eu vejo uma mensagem de que o cliente nao existe

  Scenario: Abrir pedido com nome vazio
    Given Eu abro a pagina de cadastro de pedido
    When Eu abro um pedido com o nome "Andre", com nome "" e descricao "Poblema com o touch"
    Then Eu vejo uma mensagem de que nao foi possivel abrir o pedido sem nome