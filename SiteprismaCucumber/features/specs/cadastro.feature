#language: pt
@AllTests
@Cadastro

Funcionalidade: Cadastro de usuário no ecommerce
    Como usuário do e-commerce
    Quero realizar cadastro 
    Para logar na aplicação

    Contexto: 
    Dado esteja na pagina de cadastro

    Esquema do Cenário: Validar o cadastro de usuários
    Quando o usuário preencher os campos corretamentes "<nome>", "<email>" e "<senha>"
    Então a mensagem  é exibida "<msg>"

        Exemplos:
        |nome            |email                     |senha            |msg                                                  |
        |                |nanate1044@yahoo.com      |Teste1           |Nome não pode ficar em branco                        |
        |Marcelo         |                          |Teste2           | Email é obrigatório                                 |
        |Marta           |usuario1@hotmail          |Teste3           |Email deve ser um email válido                       |
        |Junior          |usuario2@gmail.com        |                 |Password não pode ficar em branco                    |
        |Pedro           |pedro@yahoo.com           |Teste123         |Já é cadastrado?Entrar                               |
        |rodrigo         |rodrigo@hotmail.com       |123              |Este email já está sendo usado                       |