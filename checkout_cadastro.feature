Feature: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Background:
    Given que estou na página de cadastro do checkout

  Scenario: Cadastro com todos os campos obrigatórios
    When preencho todos os campos obrigatórios
    And clico em "Finalizar cadastro"
    Then devo ver mensagem "Cadastro realizado com sucesso"

  Scenario: E-mail com formato inválido
    When preencho todos os campos obrigatórios
    And insiro e-mail "usuario_invalido"
    And clico em "Finalizar cadastro"
    Then devo ver mensagem de erro "E-mail inválido"

  Scenario Outline: Campos vazios
    When tento finalizar cadastro com campo "<campo>" vazio
    Then devo ver mensagem de alerta "Preencha todos os campos obrigatórios"

    Examples:
      | campo       |
      | nome        |
      | sobrenome   |
      | endereço    |
      | cidade      |
      | cep         |
      | e-mail      |
