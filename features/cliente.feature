Feature: CRUD Cliente
  As am administrador do sistema Big-Cell
  I want criar, atualizar, e remover dados de cliente
  So that um cadastro de cliente e realizado

  Scenario: cadastrar cliente
    Given Eu abro a pagina de cadastro de cliente
    When Eu cadastrado o cliente com nome "Victor Raffaele", cpf "102.209.194-88" e telefone "83995369280"
    Then Eu vejo que o cliente foi cadastrado com sucesso


  Scenario: cadastrar cliente existente
    Given Eu abro a pagina de cadastro de cliente
    When Eu cadastrado o cliente com nome "Victor Raffaele", cpf "102.209.194-88" e telefone "83995369280"
    Then Eu vejo uma mensagem informando que o cliente ja foi cadastrado


  Scenario: cadastrar cliente invalido
    Given Eu abro a pagina de cadastro de cliente
    When Eu cadastrado o cliente com nome "Vi", cpf "102.209.194-88" e telefone "83995369280"
    Then Eu vejo que o nome do cliente estar incorreto


  Scenario: alterar dados cliente
    Given Eu abro a pagina de informacao de cliente
    When Eu seleciono a opcao de editar o cliente com nome "Victor Raffaele" e cpf "102.209.194-88"
    Then Eu vejo que os dados foram alterados com sucesso


  Scenario:  remover cadastro inexistente
    Given Eu abro a pagina de informacao de cliente
    When Eu seleciono a opcao remover o cliente "Andre" e cpf "106.698.824-29"
    Then Eu vejo uma mensagem informando que o cliente nao existe