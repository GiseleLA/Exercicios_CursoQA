#language: pt

Funcionalidade: Realizar login
    Contexto: 
    Dado que eu acesse a tela de login da EBAC_SHOP

        Esquema do Cenário: Login de usuário válido
        Quando informo o <username>
        E a <password>
        E clicar no botão login
        Então devo ser direcionado para a tela de checkout

        Exemplos:
        | username                    | pasword    |
        | "luansouza@gmail.com"       | "teste123" |
        | "marialuizagomes@gmail.com" | "teste123" |
        | "camileribeito@gmail.com"   | "teste123" |

        Esquema do Cenário: login inválido
        Quando informo o <username>
        E a <password>
        E clicar no botão login
        Então deve ser exibida a mensagem "Usuário ou senha inválidos"

        Exemplos: 

        | username                    | pasword    |
        | "luansouza@gmail.com"       | "123"      |
        | "luansouza@gm.com           | "teste123" |
        
        