Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer login na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na página de login

  Esquema do Cenário: Autenticação com diferentes credenciais
    Quando insiro usuário "<usuario>" e senha "<senha>"
    Então devo ver "<mensagem>"

    Exemplos:
      | usuario          | senha     | mensagem                                 |
      | cliente_valido   | senha123  | Redirecionado para a tela de checkout    |
      | cliente_invalido | senha123  | Usuário ou senha inválidos               |
      | cliente_valido   | senhaErr  | Usuário ou senha inválidos               |
