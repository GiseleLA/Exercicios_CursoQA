#language: pt

Funcionalidade: Configuração de produto

    Contexto:
    Dado que acesse a EBAC - SHOP
        
        Cenário: Seleção de todos os campos obrigatórios para inclusão de item no carrinho com sucesso
        Quando escolho o produto que desejo comprar
        Então devo selecionar tamanho, cor e quantidade do produto
        E incluir no carrinho de compra com sucesso

        Cenário: Inclusão de item no carrinho sem selecionar os campos obrigatórios
        Quando escolho o produto que desejo comprar
        E deixo de selecionar tamanho, cor e quantidade do produto
        E clico no botão Comprar
        Então deve retornar a mensagem "É obrigatório a seleção de tamanho, cor e quantidade do produto"

        Cenário: Realizar venda com 10 produtos
        Quando incluo 10 produtos no carrinho
        E clico no botão Checkout
        Então devo concluir a compra com sucesso

        Cenário: Realizar venda com 11 produtos
        Quando incluo 11 produtos no carrinho
        E clico no botão Checkout
        Então deve retornar a mensagem "São permitidos apenas 10 produtos por venda"

        Cenário: Clique no botão limpar
        Quando seleciono cor, tamanho e quantidade de um produto
        E clicar no botão limpar
        Então todos os dados anterirmente selecionados devem retornar para o estado inicial
