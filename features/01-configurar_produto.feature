# language: pt

Funcionalidade: Configurar produto
  Como Cliente do EBAC Shop
  Quero configurar meu produto com cor, tamanho e quantidade
  Para poder adicioná-lo ao carrinho corretamente

  Contexto:
    Dado que o cliente está na página do produto

  Esquema do Cenário: Selecionar cor, tamanho e quantidade válidos
    Quando o cliente seleciona a cor "<cor>"
    E seleciona o tamanho "<tamanho>"
    E escolhe a quantidade "<quantidade>"
    Então o botão "Adicionar ao carrinho" deve estar habilitado

    Exemplos:
      | cor   | tamanho | quantidade |
      | Rosa  | M       | 2          |
      | Azul  | G       | 1          |
      | Verde | P       | 5          |

  Esquema do Cenário: Selecionar quantidade inválida (igual ou maior que 11)
    Quando o cliente tenta selecionar a quantidade "<quantidade>"
    Então o sistema deve exibir a mensagem de erro "Não é permitido selecionar 11 ou mais unidades do produto"

    Exemplos:
      | quantidade |
      | 11         |
      | 15         |
      | 20         |
      | 99         |

  Cenário: Limpar as opções selecionadas
    Dado que o cliente preencheu os campos de cor, tamanho e quantidade
    Quando o cliente clica no botão "Limpar"
    Então todos os campos devem voltar ao estado original
