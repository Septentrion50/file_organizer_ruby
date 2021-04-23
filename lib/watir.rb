require 'watir'


browser = Watir::Browser.new :firefox, options: { profile: 'default' }
browser.goto 'google.com'
browser.driver.manage.timeouts.implicit_wait = 100 
search_bar = browser.text_field(class: 'gsfi')
search_bar.set("Hello world!")
search_bar.send_keys(:enter)
