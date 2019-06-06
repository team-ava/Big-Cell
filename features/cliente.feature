Feature: CRUD Cliente
  As am administrador do sistema Big-Cell
  I want criar, atualizar, e remover dados de cliente
  So that um cadastro de cliente e realizado

  Scenario: cadastrar cliente com sucesso
    Given Eu abro a pagina de cadastro de cliente
    When Eu cadastro o cliente com nome "Victor Raffaele", cpf "102.209.194-88" e telefone "83995369280"
    Then Eu vejo que o cliente foi cadastrado com sucesso


  Scenario: cadastrar cliente existente
    Given Eu abro a pagina de cadastro de cliente
    When Eu cadastro o cliente com nome "Victor Raffaele", cpf "102.209.194-88" e telefone "83995369280"
    And Eu cadastro novamente o cliente com nome "Victor Raffaele", cpf "102.209.194-88" e telefone "83995369280"
    Then Eu vejo uma mensagem informando que o cliente ja foi cadastrado


  Scenario: cadastrar cliente com nome invalido
    Given Eu abro a pagina de cadastro de cliente
    When Eu cadastro o cliente com nome "", cpf "102.209.194-88" e telefone "83995369280"
    Then Eu vejo que o nome do cliente deve ser preenchido


  Scenario: alterar dados cliente
    Given Eu abro a pagina de cadastro de cliente
    When Eu cadastro o cliente com nome "Victor", cpf "102.209.194-88" e telefone "83995369280"
    And Eu vou na pagina de edicao de "Victor"
    And Eu edito o nome dele para "Luis"
    Then Eu vejo que os dados foram alterados com sucesso

  Scenario:  remover cadastro com sucesso
    Given Eu abro a pagina de cadastro de cliente
    When Eu cadastro o cliente com nome "Victor", cpf "102.209.194-88" e telefone "83995369280"
    And Eu seleciono a opcao remover o cliente "Victor"
    Then Eu vejo uma mensagem informando queo cliente foi removido com sucesso