import mechanize
import cookielib
import re
first=("example.com/page1")
second=("example.com/page2")
third=("example.com/page3")
fourth=("example.com/page4")
## I have seven URL's I want to open

urls_list=[first,second,third,fourth]

br = mechanize.Browser()
# Cookie Jar
cj = cookielib.LWPCookieJar()
br.set_cookiejar(cj)

# Browser options 
br.set_handle_equiv(True)
br.set_handle_redirect(True)
br.set_handle_referer(True)
br.set_handle_robots(False)

# Log in credentials
br.open("example.com")
br.select_form(nr=0)
br["username"] = "username"
br["password"] = "password"
br.submit()

requests.get(link, headers = {'User-agent': 'your bot 0.1'})

#if response.status_code == 429:
#   time.sleep(int(response.headers["Retry-After"]))

# class TooManyRequests(Exception):
# """Too many requests"""

# @task(
#    rate_limit='10/s',
#    autoretry_for=(ConnectTimeout, TooManyRequests,),
#    retry_backoff=True)
# def api(*args, **kwargs):
#   r = requests.get('placeholder-external-api')

#   if r.status_code == 429:
#     raise TooManyRequests()

for url in urls_list:
        br.open(url)
        print re.findall("Some String")
