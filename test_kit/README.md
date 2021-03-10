# Important notes
Before executing this test suite, there are several things need to be setup and taken into considaration.  

# Setup test environment
These test scripts are written using Python, uses selenium webdriver for automation, and pytest for test execution and reporting. Thus, you have to install  
Python on your machine, then pip install selenium webdriver and pytest-selenium libraries.  

Here we guide you through the installation of selenium and pytest-selenium only assuming that you already have Python environment on your machine. If not, visit 
[the official Python page](https://www.python.org/downloads/) to download and install Python.

## Selenium webdriver
Since Selenium supports many web browsers and each browser has its own webdriver, first you will need to download 
[Google chrome webdriver](https://sites.google.com/a/chromium.org/chromedriver/downloads).  
> **_NOTE:_** Make sure to download the suitable webdriver to your version of Google chrome browser  

Then, add the webdriver to your system environment variables so it would be accessible by the scripts without the need to excplicitly attach the webdriver to the test kit directory.  
To achieve that:  
1- left click on **This PC**, then choose **properties**.  
2- choose **Advanced system settings**.  
3- choose **Environment variables**.  
4- under **System variables** double-click on **path**.  
5- choose **New**, copy and paste path to the downloaded webdriver executable.  
> **_NOTE:_** To avoid problems with long path strings, it is recommended that you create a folder in your `C:\` drive such as:  
> `C:\webdriver\bin` and append the webdriver executable into it.  

To test if everything is working fine, open a command prompt and issue the following command:  
>`C:\> chromedriver`  

You should get something like the following:  

>`Starting ChromeDriver 88.0.4324.96 (68dba2d8a0b149a1d3afac56fa74648032bcf46b-refs/branch-heads/4324@{#1784}) on port 9515`  
>`Only local connections are allowed.`  
>`Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.`  
>`ChromeDriver was started successfully.`  

After that, pip install selenium library using the following command on your command prompt:  

>`C:\> pip install selenium`  

That is all for selenium, next we guide you through installing pytest-selenium.

## Pytest-selenium
Simply, on a command prompt issue the following command:  
>`C:\ pip install pytest-selenium`  

For more details about pytest-selenium visit [this page](https://pytest-selenium.readthedocs.io/en/latest/installing.html).

# 
