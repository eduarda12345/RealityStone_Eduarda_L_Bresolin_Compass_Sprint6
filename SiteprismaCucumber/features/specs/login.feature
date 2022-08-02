#language: pt
@AllTests
@Login

Funcionalidade: Login de usuários
    Como usuário do e-commerce 
    Quero realizar login 
    Para usar logar no ecommerce

    Contexto: 
        Dado esteja na tela inicial do ecommerce

    Esquema do Cenário: Validar o login de usuários
        Quando o usuário preencher os campos corretamente "<email>" e "<senha>"
        Então mensagem é exibida "<msg>"

        Exemplos:
        |email                 |senha            |msg                                    |
        |                      |@Teste1          |Email é obrigatório                    |
        |teste1@gmail.         |@Teste2          |Email deve ser um email válido         |
        |teste2@yahoo.com      |                 |Password não pode ficar em branco      |
        |teste3@hotmail.com    |@Teste3          |                                       |
        |teste4@gmail.com      |drogras          |Email e/ou senha inválidos             |
                                       