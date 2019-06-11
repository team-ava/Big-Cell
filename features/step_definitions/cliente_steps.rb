  Given("Eu abro a pagina de cadastro de cliente") do
    visit '/clientes/new'
    expect(page).to have_content('New Cliente')

  end
  
  When("Eu cadastro o cliente com nome {string}, cpf {string} e telefone {string}") do |nome, cpf, fone|
    fill_in 'cliente[nome]', :with => nome
    fill_in 'cliente[cpf]', :with => cpf
    fill_in 'cliente[fone]', :with => fone
    click_button 'Create Cliente'  

  end
  
  When("Eu cadastro novamente o cliente com nome {string}, cpf {string} e telefone {string}") do |nome, cpf, fone|
    visit '/clientes/new'    
    fill_in 'cliente[nome]', :with => nome
    fill_in 'cliente[cpf]', :with => cpf
    fill_in 'cliente[fone]', :with => fone
    click_button 'Create Cliente'  

  end

  Then("Eu vejo que o cliente foi cadastrado com sucesso") do
    expect(page).to have_content("Cliente was successfully created.")
  end
  
  Then("Eu vejo que o nome do cliente deve ser preenchido") do
    expect(page).to have_content("Nome é um campo obrigatório")
  end
  
  Given("Eu abro a pagina de informacao de cliente") do
    visit '/clientes'
    expect(page).to have_content('Clientes')
  end
  
  Then("Eu vejo que o cpf do cliente deve ser preenchido") do
    expect(page).to have_content('Cpf é um campo obrigatório')
  end  
  
  When("Eu seleciono a opcao remover o cliente {string}") do |nome|
    visit '/clientes'
    expect(page).to have_content('Clientes')
    #click_link "destroy-#{nome}"
    page.all(:link,"Destroy")[0].click
  end
  
  Then("Eu vejo uma mensagem informando que o cliente ja foi cadastrado") do
    expect(page).to have_content('Cpf campo já existente')

  end

  Then("Eu vejo uma mensagem informando queo cliente foi removido com sucesso") do
    expect(page).to have_content("Cliente was successfully destroyed.")
  end
