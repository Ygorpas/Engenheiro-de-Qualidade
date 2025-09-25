Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que estou na página de configuração do produto

  Cenário: Seleções obrigatórias
    Quando tento adicionar ao carrinho sem escolher cor, tamanho ou quantidade
    Então devo ver a mensagem "Selecione cor, tamanho e quantidade"

  Cenário: Limite de 10 produtos por venda
    Quando seleciono cor e tamanho
    E escolho quantidade maior que 10
    Então devo ver a mensagem "Máximo de 10 produtos por venda"

  Cenário: Botão limpar
    Dado que selecionei cor, tamanho e quantidade
    Quando clico no botão "Limpar"
    Então todas as seleções voltam ao estado original
