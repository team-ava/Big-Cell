Given("Eu abro a pagina de cadastro de pedido") do
    visit '/pedidos/new'
    expect(page).to have_content('New Pedido')
  end
  
  When("Eu abro um pedido com o nome {string}, descricao {string} e com cliente {string}.") do |nome, descricao, cliente|
    fill_in 'pedido[nome]', :with => nome
    fill_in 'pedido[descricao]', :with => descricao
    select 'Victor Raffaele', from: 'pedido_clienteId'
    click_button 'Create Pedido'
  end
  
  Then("Eu vejo que o pedido foi aberto com sucesso.") do
    expect(page).to have_content('Pedido was successfully created.')
  end
  
  When("Eu deleto o pedido") do
    visit '/pedidos'
    expect(page).to have_content('Pedidos')
    page.all(:link,"Destroy")[0].click
  end
  
  Then("Eu vejo que o pedido foi cancelado com sucesso.") do
    expect(page).to have_content('Pedido was successfully destroyed.')
  end
  
  When("Eu altero o status de pedido para concluido") do
    visit '/pedidos'
    expect(page).to have_content('Pedidos')
    page.all(:link,"Edit")[0].click

    check 'pedido[status]'
    click_button 'Update Pedido'
 
  end
  
  Then("Eu vejo que o status foi alterado com sucesso.") do
    expect(page).to have_content('Status: true')
  end
  
  When("Eu abro um pedido com nome {string} e descricao {string}") do |nome, descricao|
    fill_in 'pedido[nome]', :with => nome
    fill_in 'pedido[descricao]', :with => descricao
    click_button 'Create Pedido'
  end
  
  Then("Eu vejo uma mensagem informando que o cliente referente ao pedido esta vazio.") do
    expect(page).to have_content('Clienteid é um campo obrigatório')
  end
  
  Then("Eu vejo uma mensagem informando nome esta vazio") do   
    expect(page).to have_content('Nome é um campo obrigatório')
  end