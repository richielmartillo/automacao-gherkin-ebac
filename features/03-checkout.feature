# language: pt

Funcionalidade: Finalizar cadastro no checkout
  Como cliente do EBAC Shop
  Quero preencher corretamente meus dados de cobrança
  Para concluir minha compra com sucesso

  Contexto:
    Dado que o cliente está na página de checkout

  Esquema do Cenário: Finalizar compra com dados válidos
    Quando o cliente informa o nome "<nome>", e-mail "<email>" e endereço "<endereco>"
    E clica no botão "Finalizar compra"
    Então o sistema deve concluir o pedido com sucesso

    Exemplos:
      | nome        | email            | endereco         |
      | Ana Lima    | ana@teste.com    | Rua A, 123       |
      | João Souza  | joao@email.com   | Av. Central, 456 |

  Esquema do Cenário: Finalizar compra com dados inválidos
    Quando o cliente informa o nome "<nome>", e-mail "<email>" e endereço "<endereco>"
    E clica no botão "Finalizar compra"
    Então o sistema deve exibir a mensagem de erro "<mensagem>"

    Exemplos:
      | nome        | email            | endereco         | mensagem                                |
      | Maria       | maria#email.com  | Rua B, 789       | E-mail inválido                         |
      | Lucas       |                 | Rua C, 321       | E-mail obrigatório                      |
      | Ana         | ana@teste.com    |                  | Endereço obrigatório                    |
      |             | joao@email.com   | Av. Central, 456 | Nome obrigatório                        |
      |             |                 |                  | Preencha todos os campos obrigatórios   |
