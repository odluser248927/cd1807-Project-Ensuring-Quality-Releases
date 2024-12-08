#!/usr/bin/env python3

import time
import os
import re 
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
options = webdriver.ChromeOptions()

# Start the browser and login with standard_user
def login (user, password):
    print ('Starting the browser...')
    # --uncomment when running in Azure DevOps.
    #options = ChromeOptions()
    #options.add_argument("--headless") 
    browser = webdriver.Chrome(options=options)
    browser = webdriver.Chrome()
    
    print('Browser started successfully. Navigating to the demo page to login.')
    
    browser.get("https://www.saucedemo.com/")
    print(browser.title)

    browser.find_element(By.ID, 'user-name').send_keys("standard_user")
    browser.find_element(By.ID, 'password').send_keys("secret_sauce")    
    browser.find_element(By.ID, 'login-button').send_keys("button[class='submit-button btn_action']")
    
    print('test-User-logged-in:')
    print('will be signed out in: 3 seconds.')
    time.sleep(3)

login('standard_user', 'secret_sauce')
def get_item_input_box(login):
    return login

time.sleep(5)
print ('Finished: Log-out completed!')

