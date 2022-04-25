#language: pt

Funcionalidade: Cadastro de usuario

    Contexto:
    Dado que sou direcionado para a area de checkout da EBAC_SHOP
    E quero realizar meu cadastro

        Esquema do Cenário: Cadastro de usuário válido
        Quando informo o <mome>, <sobrenome>, <endereco>, <cidade>, <CEP>, <telefone>, <endereco de email>
        E selecionar <Pais>
        E clico no botão finalizar compra
        Então deve concluir a compra com sucesso

        Exemplos:
        
        | nome    | sobrenome       | endereco                          | cidade    | CEP        | telefone      | endereco de email            | Pais   |
        | Luana   | Souza           | Estrada da Tamara, 98             | Campinas  | 08786-559  | (11)3879-5591 | luanasouza@gmail.com         | Brazil |
        | Marilia | Santos Rosario  | Rua Pedro II, 2397                | São Paulo | 025374-110 | (11)5045-2121 | mariliasr@gmail.com          | Brazil |
        | Claudio | Fonseca Vitorio | Rua Felipe Cordeiro Cardoso, 1709 | São Paulo | 02317-426  | (11)2891-7976 | claudiofonsecavit@icloud.com | Brazil |

        Esquema do Cenário: Cadastro de usuário inválido
        Quando informo o <mome>, <sobrenome>, <endereco>, <cidade>, <CEP>, <telefone>, <endereco de email>
        E clico no botão finalizar compra
        Então deve retornar uma mensagem de alerta "Esqueceu-se de preencher todos os campos obrigatórios"

        Exemplos
        | nome    | sobrenome       | endereco                          | cidade    | CEP        | telefone      | endereco de email            | Pais   |
        | Luana   | Souza           | Estrada da Tamara, 98             | Campinas  | 08786-559  | (11)3879-5591 | luanasouza@gmail.com         |        |
        | Marilia | Santos Rosario  | Rua Pedro II, 2397                | São Paulo |            | (11)5045-2121 | mariliasr@gmail.com          | Brazil |
        | Claudio |                 | Rua Felipe Cordeiro Cardoso, 1709 | São Paulo | 02317-426  | (11)2891-7976 | claudiofonsecavit@icloud.com | Brazil |
       
            
        Cenário: Cadastro de usuário com email invalido
        Quando informo todos os dados obrigatórios do formulário corretamente
        E informo um e-mail inválido
        Então é exibida a mensagem "O endereço de e-mail usado no campo Email não é um endereço de email válido"


        | nome    | sobrenome       | endereco                          | cidade    | CEP        | telefone      | endereco de email            | Pais   |
        | Luana   | Souza           | Estrada da Tamara, 98             | Campinas  | 08786-559  | (11)3879-5591 | luanasouza                   | Brazil |
        | Marilia | Santos Rosario  | Rua Pedro II, 2397                | São Paulo | 025374-110 | (11)5045-2121 | mariliasr@.com                | Brazil |