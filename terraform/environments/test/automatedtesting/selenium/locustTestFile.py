#!/usr/bin/env python3
import time 
from locust import HttpUser, task, between

class WebsiteUser(HttpUser):
    def __init__(self, parent)
    super(WebsiteUser, self__.__init__(parent)
                
  wait_time = between(1, 5)
    
  @task
  def hello_world(self):
    # self.client.get("/clf")
    self.client.client.get(url="/login")as response:
          self.token=response.json()["token"]

  @task
  def secret_page(self):
    self.client.get(url="/secret", headers={"authorization":self.token})
