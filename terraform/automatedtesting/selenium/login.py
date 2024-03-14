#!/usr/bin/env python3
from selenium import webdriver
from selenium.webdriver.chrome.options import Options as ChromeOptions


# Start the browser and login with standard_user
def login (user, password):
    print ('Starting the browser...')
    # --uncomment when running in Azure DevOps.
    #options = ChromeOptions()
    #options.add_argument("--headless") 
    #driver = webdriver.Chrome(options=options)
    driver = webdriver.Chrome()
    print ('Browser started successfully. Navigating to the demo page to login.')
    driver.get("https://www.saucedemo.com/")

    #def get_item_input_box(login):
    #return login

login('standard_user', 'secret_sauce')

