Given("Eu abro a pagina inicial de cadastro de produto") do
    visit '/produtos/new'
    expect(page).to have_content('New Produto')
  end
  
  When("Eu crio o produto com nome {string}, com quantidade {string}, com preco {string} e com tipo {string}") do |nome, quantidade, preco, tipo|
    fill_in 'produto[nome]', :with => nome
    fill_in 'produto[quantidade]', :with => quantidade
    fill_in 'produto[preco]', :with => preco
    fill_in 'produto[tipo]', :with => tipo
    click_button 'Create Produto'
  end
  
  Then("Eu vejo que o produto foi salvo com sucesso.") do
    expect(page).to have_content('Produto was successfully created.')
  end
  
  When("Eu entro na pagina do produto com nome {string}") do |nome|
    visit '/produtos'
    expect(page).to have_content('Produtos')
    #click_link "edit-#{nome}"
    page.all(:link,"Edit")[0].click
  end

  When("Eu removo produto com nome {string}") do |string|
    visit '/produtos'
    expect(page).to have_content('Produtos')
    #click_link "edit-#{nome}"
    page.all(:link,"Destroy")[0].click
  
  end
  
  When("Eu altero o preco para {string}") do |preco|
    fill_in 'produto[preco]', :with => preco
    click_button 'Update Produto'
  end
  
  Then("Eu vejo uma mensagem de que a alteracao foi realizada com sucesso") do
    expect(page).to have_content('Produto was successfully updated.')
  end
  
  Then("Eu vejo uma mensagem de que o produto foi removido com sucesso") do
    expect(page).to have_content("Produto was successfully destroyed.")
  end
  
  Then("Eu vejo que o nome deve ser preenchido.") do
    expect(page).to have_content("Nome é um campo obrigatório")
  end
  
  Then("Eu vejo uma mensagem de que o nome do produto esta com poucas letras") do
    expect(page).to have_content("Nome is too short (minimum is 4 characters)")
  end