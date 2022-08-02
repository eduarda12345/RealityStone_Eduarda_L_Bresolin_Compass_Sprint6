   Dado('logar como admin') do
    @login = Login.new 
    @login.load 
    @login.email.set 'usuario@adm.com'
    @login.password.set '1234567'
    @login.submit.click
    @cadastroProduto = CadastroProduto.new
    @cadastroProduto.btn_entrar_cadastro.click 

  end

  Dado('esteja na pagina de cadastro de produtos') do
    @cadastroProduto = CadastroProduto.new 

    end
  
  Quando('o usuário preencher os campos  corretamente {string}, {string}, {string} e {string}') do |string, string2, string3, string4|
    @cadastroProduto.name.set string #setar campo name
    @cadastroProduto.price.set string2 #setar campo price
    @cadastroProduto.description.set string3 #setar campo description
    @cadastroProduto.quantity.set string4 #setar campo quantity
    @cadastroProduto.btn_cadastrar.click #botão cadastrar
  end

  Então('o ecommerce exibe a {string}') do |string|
    expect(@cadastroProduto).to have_content string
  end

  Quando('o usuário preencher os campos corretamente {string}, {string} e {string} Corretamente') do |string, string2, string3|
    @GenerateLogin = GenerateLogin.new 
    @cadastroProduto.name.set @GenerateLogin.generate_product_name 
    @cadastroProduto.price.set string
    @cadastroProduto.description.set string2 
    @cadastroProduto.quantity.set string3 
    @cadastroProduto.btn_cadastrar.click 

  end