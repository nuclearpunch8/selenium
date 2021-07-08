from selenium import webdriver

#initialize_Chrome
PATH  = "/Users/arial-atis/Chromedriver/chromedriver"
driver = webdriver.Chrome(PATH)

driver.get('http://automationpractice.com/index.php')
driver.maximize_window()
