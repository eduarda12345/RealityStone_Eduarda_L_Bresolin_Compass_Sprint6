Dado('esteja logado como administrador') do
    @login = Login.new
    @login.load 
    @login.email.set 'adm@adm.com' 
    @login.password.set '123' 
    @login.submit.click 
  end
  
  Quando('acessar a pagina de Cadastrar Usuários') do
    find('#root > div > div > p.row > div:nth-child(2) > div > div > a').click 
  end
  
  Quando('preencher todos os campos corretamente') do 
    @GenerateLogin = GenerateLogin.new 
    @CadastroAdmin = CadastroAdmin.new 
    @@CadastroAdmin.name.set @GenerateLogin.generate_name
    @@CadastroAdmin.email.set @GenerateLogin.generate_email 
    @@CadastroAdmin.password.set @GenerateLogin.generate_password 
    @@CadastroAdmin.btn_cadastrar_usuario.click 
  end
  
  Então('usuáriocadastrado com sucesso') do
    expect(@@CadastroAdmin).to have_content 'Lista de usuários'
  end