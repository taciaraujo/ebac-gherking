#language: pt

Funcionalidade: Login na plataforma 

Contexto:
    Dado que eu acesse a página de autenticação da EBAC-SHOP

    Esquema do Cenário: Autenticar múltiplos usuários 
    Quando eu digitar o <usuario>
    E a <senha>
    Então deve exibir a <mensagem> de sucesso


    Exemplos:
    |usuario            | senha         | mensagem
    |"joao@ebac.com.br" | "teste@123"   |  "Olá João!"  |
    |"maria@ebac.com.br"! "senha@321"   |  "Olá Maria!" |
    |"taci@ebac.com.br" ! "ebac@2024"   |   "Olá Taci!" |

    