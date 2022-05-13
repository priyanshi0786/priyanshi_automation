Settings
1. Firstly I've imported SeleniumLibrary in Settings for using all the methods of selenium
2. Then I've imported OperatingSystem library for using file operations like crating a file and appending data in file
3. After that I've imported Collections file for using list operation

Variables
1. I've created three variables browser, url and path
2. In browser, I've used chromedriver, I put the chromedriver.exe file in Python -> Script folder
3. I've used google url in url variable
4. In path variable, I've given the path of the text file in which I'm writing all the links

Test Cases
1. I've created a Testcase PrintLinksTest
2. Then I've used Open Browser method to open the google url
3. Then I've maximized the window and click on search field using Click Element where I gave the xpath of search field
4. There I've given the Input Text "robotframework"
5. Then I've clicked on Google search button using Click Element method
6. Then I got the total #f all the header links in ALlLinksCount variable
7. After that I've created a list - AllLinks
8. Then I extracted the data using for loop and appended all the data in the list
9. Then I've created a new file using Create File ${path} syntax
10. Then I appended all the data of list in file using Append to File syntax
11. After that I've closed the browser
