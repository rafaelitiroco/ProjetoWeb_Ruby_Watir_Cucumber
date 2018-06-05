#encoding: utf-8
require 'magic_encoding'

require './features/Pages/WebPage'

web_page = WebPage.new

Dado(/^que preencha o campo de pesquisa com "([^"]*)"$/) do |value|
  web_page.preencher_pesquisa_google(value)
  obter_evidencia
end

E(/^clicar com botão de pesquisa$/) do
  web_page.clicar_pesquisa_google
  obter_evidencia
  sleep 2
end

Dado(/^que insira o login "([^"]*)"$/) do |value|
  web_page.preencher_email_gmail(value)
  obter_evidencia
end

E(/^que insira a senha "([^"]*)"$/) do |value|
  web_page.preencher_senha_gmail(value)
  obter_evidencia
end

E(/^clicar no botao de proxima/) do
  web_page.clicar_proxima_gmail
  obter_evidencia
end

E(/^simular a ação da tecla enter no email/) do
  web_page.pressionar_tecla_enter_email_gmail
  obter_evidencia
end

E(/^simular a ação da tecla enter na senha/) do
  web_page.pressionar_tecla_enter_senha_gmail
  obter_evidencia
end

E(/^validar se a mensagem de retorno é "([^"]*)"$/) do |value|
  web_page.validar_mensagem_retorno_gmail(value)
  obter_evidencia
end