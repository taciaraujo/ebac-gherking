#language: pt

Funcionalidade: Efetuar compras do carrinho
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

Contexto:
    Dado que eu acesse o portal da plataforma EBAC SHOP

Cenário: Finalizar Compra
Quando Eu fizer Login
E acessar a página do Carrinho
Então o sistema deve exibir flags de forma de pagamento 
E obrigatóriamente marcado com um '*' o cliente deve escolher entre pix, cartão, boleto  
E para finalizar o cliente deve inserir email e senha cadastrados para confirmar compra 

Esquema do Cenário: Compra realizada com sucesso
Quando eu selecionar a <forma de pagamento>
E inserir <emaiL> e <senhas> válidos
Então o sistema deve exibir uma <mensagem> de sucesso

Exemplos:
|      Forma de pagamento      | email              | Senha       | Mensagem                           |
|       "Pix"                  |"joao@ebac.com.br"  | "teste@123" |  "Compra realizada com Sucesso!"   |
|       "Cartão"               |"maria@ebac.com.br" | "senha@321" |  "Compra realizada com Sucesso!"   |
|       "Boleto"               |"taci@ebac.com.br"  ! "ebac@2024" |  "Compra realizada com Sucesso!"   |


Esquema do Cenário: Validar Campos obrigatórios e formato de email/senha
Dado que eu tenha inserido <email> e/ou <senha> invalidos
E clicar no Botão "Comprar"
Então O sistema deve exibir uma <mensagem> de erro

Exemplos:
| EMAIL               | SENHA          | MENSAGEM                                            |
|"joao#@ebac.com.br"  | "teste..@123" |  "Dados Inválidos, revise os campos obrigatórios!"   |
|"maria#@ebac.com.br" | "senha..@321" |  "Dados Inválidos, revise os campos obrigatórios!"   |