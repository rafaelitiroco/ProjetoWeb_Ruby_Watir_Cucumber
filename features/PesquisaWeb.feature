#language: pt
#encoding: utf-8

@executa_tudo_teste
Funcionalidade:Realizar uma pesquisa

  #Contexto:
   #Dado

  @RealizarPesquisa
  Cenário: Realizar Pesquisa
    Dado que preencha o campo de pesquisa com "teste"
    E clicar com botão de pesquisa


  @ValidarResultadoPesquisa
  Cenário: Validar Login E-mail
    Dado que insira o login "123@gmail.com"
    E simular a ação da tecla enter no email
    E que insira a senha "12345"
    E simular a ação da tecla enter na senha
    E validar se a mensagem de retorno é "Senha incorreta"
