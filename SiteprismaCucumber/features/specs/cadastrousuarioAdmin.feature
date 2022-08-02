#language: pt
@AllTests
@CadastroUsuarioAdmin

Funcionalidade: Cadastro de usuario administrador
    Como administrador do e-commerce 
    Quero realizar cadastro 
    Para logar na aplicação

    Contexto: 
        Dado que esteja na tela de cadastro para administrador

    Esquema do Cenário: Validar o cadastro de administrador
        Quando o administrador preencher os campos "<nome>", "<email>" e "<senha>" 
        Então a mensagem é exibida "<msg>"

        Exemplos:
        |nome            |email                |senha            |msg                                       |
        |                |teste@yahoo.com      |Teste1           |Nome não pode ficar em branco             |
        |Benecio         |                     |Teste2           |Email é obrigatório                       |
        |Joao            |teste124@gmail.      |Teste3           |Email deve ser um email válido            |
        |Eduardo         |usuario8@hotmail.com |                 |Password não pode ficar em branco         |
        |Luis            |usuariio3@yahoo.com  |Teste123         |Este email já está sendo usado            |
    
    