Feature: CRUD Cliente
  As am administrador do sistema Big-Cell
  I want criar, atualizar, e remover dados de cliente
  So that um cadastro de cliente e realizado

  Scenario: cadastrar cliente
    Given Eu abro a pagina inicial para cadastro de cliente
    When Eu crio o cliente "Victor Raffaele" com seus respectivos dados
    Then Eu vejo que o cadastro de "Victor" foi realizado


  Scenario: cadastrar cliente existente
    Given Eu abro a pagina para cadastro de cliente
    When Eu crio um cliente com nome "Victor" com seus respectivos dados
    Then Eu vejo uma mensagem de erro informando que o "CPF" passado ja esta cadastrado


  Scenario: cadastrar cliente invalido
    Given Eu abro a pagina de cadastro de cliente
    When Eu crio um cliente de nome menor que 3 caracteres
    Then Eu vejo que o usuario nao foi criado seguido de uma mensagem de erro


  Scenario: alterar dados cliente
    Given Eu abro a pagina de edicao de cadastro
    When Eu procuro o cliente "Victor" e altero seu endereco
    Then Eu vejo que os dados foram alterados e a operacao concluida


  Scenario:  remover cadastro inexistente
    Given Eu abro a pagina de remocao de cadastro
    When Eu procuro remover o cadastro de "Andre"
    Then Eu vejo uma mensagem de erro impedindo a remocao de "Andre" pois nao existe