from actor import Actor
from selenium.webdriver.common.by import By
import time

class Admin(Actor):
	def __init__(self, password, student_id, utility):
		super().__init__(password, student_id)
		self.utility = utility





