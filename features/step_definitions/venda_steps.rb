
  Given("Eu tenho um produto com nome {string}, com quantidade {string}, com preco {string} e com tipo {string}") do |nome, quantidade, preco, tipo|
    visit '/produtos/new'
    fill_in 'produto[nome]', :with => nome
    fill_in 'produto[quantidade]', :with => quantidade
    fill_in 'produto[preco]', :with => preco
    fill_in 'produto[tipo]', :with => tipo
    click_button 'Create Produto'
  end
  
  Given("Eu tenho um cliente com nome {string}, cpf {string} e telefone {string}") do |nome, cpf, fone|
    visit '/clientes/new'    
    fill_in 'cliente[nome]', :with => nome
    fill_in 'cliente[cpf]', :with => cpf
    fill_in 'cliente[fone]', :with => fone
    click_button 'Create Cliente'
  end
  
  Given("Eu abro a pagina de cadastrar venda") do
    visit '/vendas/new'
    expect(page).to have_content('New Venda')
  end
  
  When("Eu cadastro a venda com o cliente com nome {string}, o produto {string} e o preço de servico {string}") do |nome, produto, servico|
    visit '/vendas/new'
    expect(page).to have_content('New Venda')
    select 'Victor Raffaele', from: 'venda_clienteId'
    select 'Xiaomi Mi 8 lite', from: 'venda_produtoId'
    fill_in 'venda[valorServico]', :with => servico
    click_button 'Create Venda'

  end
  
  Then("Eu vejo que a venda foi realizada com sucesso") do
    expect(page).to have_content('Venda was successfully created.')
  end

  When("Eu cadastro a venda com o produto {string} e o preço de servico {string}") do |produto, servico|
    visit '/vendas/new'
    expect(page).to have_content('New Venda')
    select 'Xiaomi Mi 8 lite', from: 'venda_produtoId'
    fill_in 'venda[valorServico]', :with => servico
    click_button 'Create Venda'
  end
  
  Then("Eu vejo uma mensagem informando que o cliente referente a venda esta vazio.") do
    expect(page).to have_content('Clienteid é um campo obrigatório')
  end

  When("Eu cadastro a venda com o cliente com nome {string} e o preço de servico {string}") do |cliente, servico|
    visit '/vendas/new'
    expect(page).to have_content('New Venda')
    select 'Victor Raffaele', from: 'venda_clienteId'   
    fill_in 'venda[valorServico]', :with => servico
    click_button 'Create Venda'

  end  
  
  Then("Eu vejo uma mensagem informando que o produto referente a venda esta vazio.") do
    expect(page).to have_content('Produtoid é um campo obrigatório')
  end
  
  Then("Eu vejo uma mensagem informando que o preco referente a venda e invalido.") do
    expect(page).to have_content('Valorservico deve ser um número')
  end
  
  Then("Eu vejo uma mensagem informando que o valor do servico esta incoerente") do
    expect(page).to have_content('Valorservico excede o valor padrão de serviços')
  end
  