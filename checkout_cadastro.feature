Funcionalidade: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na página de cadastro do checkout

  Cenário: Cadastro completo com sucesso
    Quando preencho todos os campos obrigatórios
    E clico em "Finalizar cadastro"
    Então devo ver a mensagem "Cadastro realizado com sucesso"

  Cenário: E-mail inválido
    Quando preencho todos os campos obrigatórios
    E informo e-mail "usuario_invalido"
    E clico em "Finalizar cadastro"
    Então devo ver a mensagem de erro "E-mail inválido"

  Esquema do Cenário: Campos obrigatórios em branco
    Quando tento finalizar cadastro deixando "<campo>" vazio
    Então devo ver a mensagem de alerta "Preencha todos os campos obrigatórios"

    Exemplos:
      | campo     |
      | nome      |
      | sobrenome |
      | endereço  |
      | cidade    |
      | cep       |
      | e-mail    |
