#language: pt

Funcionalidade: Acesso ao sistema
  Como um usuário
  Eu quero acessar o sistema utilizando minhas credenciais
  Para que eu possa utilizar todos os recursos necessários ao meu trabalho

  Cenário: Acesso de um administrador do sistema
    Dado que exista um usuário "administrador" de nome "admin" e senha "password"
    Quando eu acessar o sistema com as credenciais "admin" "password"
    Então devo ver o menu "Administração" com as seguintes opções:
      |opcao            |
      |Criar usuário    |
      |Cadastrar Aluno  |
      |Lista de usuários|
      |Lista de alunos  |

  Cenário: Acesso de um secretário do sistema
    Dado que exista um usuário "secretario" de nome "sect" e senha "sectpass"
    Quando eu acessar o sistema com as credenciais "sect" "sectpass"
    Então devo ver o menu "Secretaria" com as seguintes opções:
      |opcao            |
      |Lista de usuários|
      |Lista de alunos  |
    Então não devo ver as seguintes opções no menu "Secretaria":
      |opcao            |
      |Criar usuário    |
      |Cadastrar Aluno  |
