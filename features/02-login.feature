# language: pt

# Os cenários abaixo estão prontos para futura automação com Behave.
# Foram considerados fluxos positivos e negativos, incluindo campos vazios e mensagens específicas de erro.

Funcionalidade: Login do usuário
  Como um usuário do sistema
  Quero realizar login com minhas credenciais
  Para acessar as funcionalidades da plataforma

  Contexto:
    Dado que o usuário está na página de login

  Cenário: Login realizado com sucesso
    Quando o usuário informa o e-mail "usuario@teste.com"
    E informa a senha "senha123"
    E clica no botão de login
    Então o sistema deve redirecionar o usuário para a página de checkout

  Cenário: Login com senha inválida
    Quando o usuário informa o e-mail "usuario@teste.com"
    E informa a senha "senhaErrada"
    E clica no botão de login
    Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"
    E o usuário deve permanecer na página de login

  Cenário: Login com campos obrigatórios vazios
    Quando o usuário tenta logar sem informar e-mail e senha
    E clica no botão de login
    Então o sistema deve exibir a mensagem "Campos obrigatórios não preenchidos"
    E o usuário deve permanecer na página de login

  Esquema do Cenário: Tentativas de login inválidas
    Quando o usuário informa o e-mail "<email>" e a senha "<senha>"
    E clica no botão de login
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
      | email              | senha     | mensagem                             |
      | usuario@teste.com  | 123       | Credenciais inválidas                |
      | usuario@teste.com  |           | Senha obrigatória                    |
      |                    | 123456    | E-mail obrigatório                   |
      |                   |           | Campos obrigatórios não preenchidos |
