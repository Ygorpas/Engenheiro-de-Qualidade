Feature: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Background:
    Given que estou na página de login

  Scenario Outline: Login com credenciais
    When insiro usuário "<usuario>" e senha "<senha>"
    Then devo ver "<mensagem>"

    Examples:
      | usuario        | senha     | mensagem                                 |
      | cliente@valido | senha123  | Redirecionado para a tela de checkout    |
      | cliente@inval  | senha123  | Usuário ou senha inválidos               |
      | cliente@valido | senhaErr  | Usuário ou senha inválidos               |
