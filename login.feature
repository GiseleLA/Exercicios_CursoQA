#language: pt

    Funcionalidade: Configuração de produto

        Contexto:
        Dado que acesse a EBAC - SHOP

            Cenário: Seleção de campos obrigatórios
            Quando escolho o produto que desejo comprar
            Então devo selecionar tamanho, cor e quantidade do produto
            E incluir no carrinho de compra com sucesso

            Cenário: Seleção de campos obrigatórios
            Quando escolho o produto que desejo comprar
            E deixo de selecionar tamanho, cor e quantidade do produto
            E clico no botão Comprar
            Então deve retornar a mensagem "É obrigatório a seleção de tamanho, cor e quantidade do produto"

            Cenário: Venda com 10 produtos
            Quando incluo 10 produtos no carrinho
            E clico no botão Checkout
            Então devo concluir a compra com sucesso

            Cenário: Venda com 11 produtos
            Quando incluo 11 produtos no carrinho
            E clico no botão Checkout
            Então deve retornar a mensagem "São permitidos apenas 10 produtos por venda"

            Cenário: Clique no botão limpar
            Quando seleciono cor, tamanho e quantidade de um produto
            E clicar no botão limpar
            Então todos os dados anterirmente selecionados deven retornar para o estado inicial

        Contexto: 
        Dado que eu acesse a tela de login da EBAC_SHOP

            Esquema do Cenário: Login de usuário válido
            Quando digitar o <username>
            E a <password>
            E clicar no botão login
            Então devo ser direcionado para a tela de checkout

            Exemplos:
            | username                    | pasword      |
            | "luansouza@gmail.com"       | "teste123" |
            | "marialuizagomes@gmail.com" | "teste123" |
            | "camileribeito@gmail.com"   | "teste123" |

            Cenário: Senha inválida
            Quando digitar o username "luansouza@gmail.com"
            E a password "123"
            E clicar no botão login
            Então deve ser exibida a mensagem "Usuário ou senha inválidos"

            Cenário: Usuário inexistente
            Quando digitar o usuário "luansouza@gma.com"
            E a senha "teste123"
            E clicar no botão login
            Então deve ser exibida a mensagem "Usuário ou senha inválidos"

        Contexto:
        Dado que sou direcionado para a area de checkout da EBAC_SHOP
        E quero realizar meu cadastro

            Esquema do Cenário: Cadastro de usuário válido
            Quando digitar o <mome>, <sobrenome>, <endereco>, <cidade>, <CEP>, <telefone>, <endereco de email>
            E selecionar <Pais>
            E clico no botão finalizar compra
            Então deve concluir a compra com sucesso

            Exemplos:
            | nome    | sobrenome       | endereco                          | cidade    | CEP        | telefone      | endereco de email            | Pais|
            | Luana   | Souza           | Estrada da Tamara, 98             | Campinas  | 08786-559  | (11)3879-5591 | luanasouza@gmail.com         | Brazil |
            | Marilia | Santos Rosario  | Rua Pedro II, 2397                | São Paulo | 025374-110 | (11)5045-2121 | mariliasr@gmail.com          | Brazil |
            | Claudio | Fonseca Vitorio | Rua Felipe Cordeiro Cardoso, 1709 | São Paulo | 02317-426  | (11)2891-7976 | claudiofonsecavit@icloud.com | Brazil |

            Cenário: Cadastro de usuário inválido
            Quando não informo os dados obrigatórios do formulário corretamente
            E clico no botão finalizar compra
            Então deve retornar uma mensagem de alerta "Esqueceu-se de preencher todos os campos obrigatórios"

            Cenário: Cadastro de usuário com email valido
            Quando informo todos os dados obrigatórios do formulário corretamente
            E informo um e-mail valido
            E clico no botão finalizar compra
            Então deve concluir a compra com sucesso
            
            Cenário: Cadastro de usuário com email invalido
            Quando informo todos os dados obrigatórios do formulário corretamente
            E informo um e-mail inválido
            Então é exibida a mensagem "O endereço de e-mail usado no campo Email não é um endereço de email válido"
