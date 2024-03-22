#!/usr/bin/env python3

from selenium import webdriver
from selenium.webdriver.chrome.options import Options as ChromeOptions
import sys

# Start the browser and navigate to http://automationpractice.com/index.php.

# browser = webdriver.FireFox()
# browser.get('http://localhost:8000')
driver = webdriver.Chrome()
location = sys.arv[1]

# driver.get('http://automationpractice.com/index.php')
driver.get('http://localhost:8080/imp/')
# urllib3.PoolManager().request('GET', 'http://localhost:8080/imp')
# driver.get('http://localhost:8080/imp')
# driver.get('stackoverflow.com/questions?sort=votes')
# title = driver.find_element_by_css_selector('h1').text


# badSite:below_do_not_go:
# driver.find_element_by_css_selector("input[id='search_query_top']").send_keys("t shirt")

def health_check(address):
    print("string the browser")
    options = ChromeOptions()
    options.add_argument("--headless")
    driver = webdriver.Chrome(options=options)
    print("Browser started")
    driver.get(address)
    print(driver.page_source)
    driver.quit()
    return True

if health_check(location):
    print("Testpassed!")
else:
    print("testfailed:(")

