from PageObjectLibrary import PageObject
from robot.libraries.BuiltIn import BuiltIn
from robot.api import logger

class LoginPage(PageObject):
    # PAGE_TITLE = "Login - PageObjectLibrary Demo"
    # PAGE_URL = "https://www.virginmediabusiness.co.uk"

    _locators = {
        "username": "name=uname",
        "password": "name=psw",
        "submit_button": "name=submit",
    }
    
    def login_as_a_normal_user(self):
         logger.info("WE ARE HERE ::::: HELL WITH IT")
         username = BuiltIn().get_variable_value("${USERNAME}")
         password = BuiltIn().get_variable_value("${PASSWORD}") 
         self.se2lib.input_text(self.locator.username, username)
         self.se2lib.input_text(self.locator.password, password)
         with self._wait_for_page_refresh():
            self.selib.click_button(self.locator.submit_button)        