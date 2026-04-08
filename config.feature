#language: pt

Funcionalidade: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

Contexto:
    Dado que eu acesse o portal da plataforma EBAC SHOP

Cenário: Configuração de itens
Quando Eu acessar a página de busca
Então o sistema deve exibir flags de tamanho e cor para cada produto
E exibir o ícone de Adicionar ao carrinho 

Esquema do Cenário: Adicionar o mesmo produto de tamanho e cores diferentes 
Quando eu selecionar a <cor>
E o <tamanho>
E a <quantidade>
E clicar no botão "Adicionar ao carrinho"
Então o sistema deve exibir uma <mensagem> de sucesso

Exemplos:
|      Cor      |tamanho           | Quantidade        | Mensagem                   |
|   "Rosa"      |"gg"              | "1"               |  "Adicionado com Sucesso!" |
|   "amarelo"   |"m"               | "6"               |  "Adicionado com Sucesso!" |
|    "Azul"     |"pp"              ! "10"              |  "Adicionado com Sucesso!" |


Cenário: Limpar Seleção
Dado que eu tenha selecionado Cor, tamanho e quantidade
Quando Eu clicar no Botão "limpar"
Então Os produtos devem resetados ao estado original