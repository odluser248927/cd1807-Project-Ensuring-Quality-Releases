from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options as ChromeOptions

driver = webdriver.Chrome('./chromedriver')
#driver = webdriver.Chrome('/home/dahsage3/eegrOrg/eegrOsPrac/azNotes/project3Files/p5sub/Project-Ensuring-Quality-Releases-/automatedtesting/selenium/.chromedriver')


# Start the browser and login with standard_user
try:
  def login (user, password):
      print ('Starting the browser...')
      # --uncomment when running in Azure DevOps.
      #options = ChromeOptions()
      #options.add_argument("--headless") 
      #driver = webdriver.Chrome(options=options)
      #driver = webdriver.Chrome()
      
  print ('Browser started successfully. Navigating to the demo page to login.')
  
  driver.get('https://www.saucedemo.com/')
  login('standard_user', 'secret_sauce')
  
finally:
  driver.quit()


