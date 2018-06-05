#encoding: utf-8

require 'magic_encoding'

class WebPage < WebLocators

  def initialize
    @driver = $browser
  end

  def preencher_pesquisa_google(value)
    txt_pesquisa_google.wait_until_present
    txt_pesquisa_google.send_keys value
  end

  def clicar_pesquisa_google
    frame_pesquisa_google.wait_until_present
    frame_pesquisa_google.click
    btn_pesquisa_google.wait_until_present
    btn_pesquisa_google.click
  end

  def preencher_email_gmail(value)
    txt_email_gmail.wait_until_present
    txt_email_gmail.send_keys(value)
  end

  def preencher_senha_gmail(value)
    txt_senha_gmail.wait_until_present
    txt_senha_gmail.send_keys(value)
  end

  def clicar_proxima_gmail
    btn_proxima_gmail.wait_until_present
    btn_proxima_gmail.click
  end

  def pressionar_tecla_enter_email_gmail
    txt_email_gmail.send_keys :enter
  end

  def pressionar_tecla_enter_senha_gmail
    txt_senha_gmail.send_keys :enter
  end

  def validar_mensagem_retorno_gmail(value)
    raise "Mensagem de retorno incorreta!" if !lbl_mensagem_retorno_gmail.text.include?(value)
  end
end

