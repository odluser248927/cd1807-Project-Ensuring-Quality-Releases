#from pathlib import path
from selenium import webdriver
#from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options as ChromeOptions

#options = ChromeOptions()
driver = webdriver.Chrome()
driver = webdriver.Chrome('./chromedriver')
#driver.get("http://www.python.org")
driver.get("https://www.saucedemo.com/")

# Start the browser and login with standard_user
def login (user, password):
    print ('Starting the browser...')
    # --uncomment when running in Azure DevOps.
    #options = ChromeOptions()
    #options.add_argument("--headless") 
    #driver = webdriver.Chrome(options=options)
    #driver = webdriver.Chrome()
    print ('Browser started successfully. Navigating to the demo page to login.')
    #driver.get("https://www.saucedemo.com/")

    def get_item_input_box(login):
      return login

login('standard_user', 'secret_sauce')
driver.close()
