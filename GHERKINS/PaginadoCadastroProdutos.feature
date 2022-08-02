#language: pt

Funcionalidade: Página de cadastro de Produto
    SENDO um usuárioAdmin cadastre produtos no ecommerce ServeRest
    QUERO usuarioAdmin para cadastrar varios produtos no ecommerce ServeRest
    PARA publica os produtos no site para os clientes comprar 

    Contexto: Estar na pagina de Cadastro de Produtos
        Dado adicionar novo produto para clientes comprar
        Quando adicionar novo produto que foi lançado no mercado de trabalho 

    Cenário: 
        Quando Cadastrar novo produtos nos campos obrigarios e prenchido corretamente
        Então Sera colocado para ser na pagina de produtos para ser vendido no ecommerce 

Examplos: 

| nome       | preço           | descrição          | quantidade       | Imagem do produto|       msg                          |    
| Celular    | R$ 2.700,00     |    Samsung         |     888          |      false       |Campo de imagem obrigatorio         | 
| Celular    | R$ 7.200,00     |    Iphone          |                  |      true        |Campo de quantidade obrigatorio     |  
| TV         |                 | Internet sem fio   |     9999         |       false      |Campos de preço e imagem obrigatorio|
|            | R$ 3.780,99     | bateria sem fio    |                  |      true        |Campos de nome e quantidade obrigado|
| TV Smart   |                 | Conecta o Celular  |     6565         |      true        |Campo de preço obrigatorio          |
| Notebook   | R$ 9.898,00     | Tela digital       |     2323         |       true       |Produto ja foi cadastrado no ecommerce|
| Computador | R$ 6.780,99     |                    |     8787         |       true       |Campo de descrição obrigatorio      |
| Notebook   | R$ 9.349,10     |     Iphone         |     2323         |       true       |Cadastrado com sucesso              |
| Impressora | R$ 5.166,99     |     Dell           |    12345         |       true       |Cadastrado com sucesso              |





