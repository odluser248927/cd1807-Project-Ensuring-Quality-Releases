#!/usr/bin/env python3

import time
import os
import re 
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
#chromeOptions.AddArguments( "--remote-debugging-pipe" )

options = webdriver.ChromeOptions()

# Start the browser and login with standard_user
def login (user, password):
    print ('Starting the browser...')
    # --uncomment when running in Azure DevOps.
    options = webdriver.ChromeOptions()
    options.headless = True
    options.add_argument("--headless=new")
    options.add_argument("--remote-debugging-pipe")
    options.add_argument("--no-sandbox")
    browser = webdriver.Chrome(options=options)
    browser = webdriver.Chrome()
    
    print('Browser started successfully. Navigating to the demo page to login.')
    
    url = 'https://www.saucedemo.com/'
    browser.get("https://www.saucedemo.com/")
    print(browser.title)

    browser.find_element(By.ID, 'user-name').send_keys("standard_user")
    browser.find_element(By.ID, 'password').send_keys("secret_sauce")
    
    browser.find_element(By.ID, 'login-button').send_keys("button[class='submit-button btn_action']")

    search_item = 'all items'

    print('Navigating to ' + url)
    #browser.get(url)

    print('Searching for ' + search_item)
    time.sleep(1)
    
    #test-suite:(adds)
    element = browser.find_element(By.ID, 'add-to-cart-sauce-labs-backpack').click()
    time.sleep(0.2)
    element = browser.find_element(By.ID, 'add-to-cart-sauce-labs-bike-light').click()
    time.sleep(0.2)
    element = browser.find_element(By.ID, 'add-to-cart-sauce-labs-bolt-t-shirt').click()
    time.sleep(0.2) 
    element = browser.find_element(By.ID, 'add-to-cart-sauce-labs-fleece-jacket').click()
    time.sleep(0.2)
    element = browser.find_element(By.ID, 'add-to-cart-sauce-labs-onesie').click()
    time.sleep(0.2)
    element = browser.find_element(By.ID, 'add-to-cart-test.allthethings()-t-shirt-(red)').click()    
    print('All items added.')
    
    time.sleep(1)

    #test-suite:(removes)
    element = browser.find_element(By.ID, 'remove-sauce-labs-backpack').click()
    time.sleep(0.2)
    element = browser.find_element(By.ID, 'remove-sauce-labs-bike-light').click()
    time.sleep(0.2)
    element = browser.find_element(By.ID, 'remove-sauce-labs-bolt-t-shirt').click()
    time.sleep(0.2)
    element = browser.find_element(By.ID, 'remove-sauce-labs-fleece-jacket').click()
    time.sleep(0.2)
    element = browser.find_element(By.ID, 'remove-sauce-labs-onesie').click()
    time.sleep(0.2)
    element = browser.find_element(By.ID, 'remove-test.allthethings()-t-shirt-(red)').click()    
    print('All items removed.')
    print('debug - element type returned:')
    print(element)
    time.sleep(2)


login('standard_user', 'secret_sauce')
def get_item_input_box(login):
    return login

time.sleep(5)
print ('Finished: Log-out completed!')

