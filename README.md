Settings
Firstly I've imported SeleniumLibrary in Settings for using all the methods of selenium
Then I've imported OperatingSystem library for using file operations like crating a file and appending data in file
After that I've imported Collections file for using list operation

Variables
I've created three variables browser, url and path
In browser, I've used chromedriver, I put the chromedriver.exe file in Python -> Script folder
I've used google url in url variable
In path variable, I've given the path of the text file in which I'm writing all the links

Test Cases
I've created a Testcase PrintLinksTest
Then I've used Open Browser method to open the google url
Then I've maximized the window and click on search field using Click Element where I gave the xpath of search field
There I've given the Input Text "robotframework"
Then I've clicked on Google search button using Click Element method
Then I got the total #f all the header links in ALlLinksCount variable
After that I've created a list - AllLinks
Then I extracted the data using for loop and appended all the data in the list
Then I've created a new file using Create File ${path} syntax
Then I appended all the data of list in file using Append to File syntax
After that I've closed the browser
