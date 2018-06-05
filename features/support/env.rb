require 'magic_encoding'
require 'cucumber'
require 'watir'
require './features/support/lib'
require './features/support/configuration_url'

browser = Watir::Browser.new :chrome#, switches: switches
browser.window.maximize
$URL = Configuration["url"]
browser.goto $URL
$browser = browser
@driver = browser
