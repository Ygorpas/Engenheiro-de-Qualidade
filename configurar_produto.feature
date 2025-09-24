Feature: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Background:
    Given que estou na página de configuração do produto

  Scenario: Seleções obrigatórias de cor, tamanho e quantidade
    When eu tento adicionar ao carrinho sem selecionar cor, tamanho ou quantidade
    Then deve exibir mensagem de erro "Selecione cor, tamanho e quantidade"

  Scenario: Limite de quantidade por venda
    When seleciono cor, tamanho e quantidade maior que 10
    Then deve exibir mensagem de erro "Máximo de 10 produtos por venda"

  Scenario: Botão limpar retorna ao estado original
    Given que selecionei cor, tamanho e quantidade
    When clico no botão "Limpar"
    Then as seleções devem voltar ao estado original
