#language: pt
@AllTests
@CadastroProduto

Funcionalidade: Cadastrar um novo produto
    Como administrador do e-commerce
    cadastrar um novo produto 
    Para os usuários poder comprar Produtos

    Contexto: 
        Dado esteja na pagina de cadastro de produtos
        E logado como admin

    Esquema do Cenário: Validar o cadastro de um novo produto
        Quando o usuário preenchendo os campos corretamente "<Nome:>", "<Preço:>", "<Descrição:>" e "<Quantidade:>"
        Então Exibe a '<msg:>'

        Exemplos:
        |Nome:          |Preço:         |Descrição:                       |Quantidade:            |msg:                                                                              |
        |               |900            |alta qualidade                   |2000                   |Nome não podera ficar branco                                                     |
        |TV smart       |               |TV com alta qualidade de imagem  |1000                   |Preco é obrigatório                                                               |
        |chuveiro       |1100           |                                 |100                    |Descricao não podera ficar em branco                                                |
        |computador     |300            |memoria alta qualidade           |                       |Quantidade é  campo obrigatório                                                          |
        |Câmera         |300            |Tira fotos com alta qualidade    |3000                   |Já existe produto com esse nome                                                   |
