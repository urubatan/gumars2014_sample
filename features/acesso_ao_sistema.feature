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