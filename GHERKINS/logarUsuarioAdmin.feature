#language: pt

Funcionalidade: logar com usuarioAdmin

    SENDO que podera cadastrar, excluir no ecommerce
    QUERO cadastrar produtos e usuario e excluir 
    PARA cadastrar novos produtos e usuarios 
    E excluir antigos produtos e usuarios 

Contexto: Estar na pagina do cadrastro usuarios

        Dado adicionar novos usuarios 
        Quando logar no ecommerce 

    Cenário: 
    
    Quando Cadastrar, excluir, adicionar 
    Então vai ser cadastrado novos produtos e usuario 

Exemplos:
||||

