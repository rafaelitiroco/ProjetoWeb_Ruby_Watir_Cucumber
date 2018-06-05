#encoding: utf-8

require 'magic_encoding'

class WebLocators

  def txt_pesquisa_google
    @driver.input(id: 'lst-ib', name: 'q')
  end

  def btn_pesquisa_google
    @driver.input(name: "btnK", value: "Pesquisa Google")
  end

  def frame_pesquisa_google
    @driver.div(id: "lga")
  end

  def txt_email_gmail
    @driver.input(id: 'identifierId')
  end

  def txt_senha_gmail
    @driver.input(name: 'password')
  end

  def btn_proxima_gmail
    @driver.div(id: 'passwordNext')
  end

  def lbl_mensagem_retorno_gmail
    @driver.div(id: 'password')
  end
end