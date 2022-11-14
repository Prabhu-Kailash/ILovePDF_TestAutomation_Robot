# Guidelines for Test (Robot) Execution
## Prerequisites to run the Test Suites :-

Make sure below important packages are installed for the Test Execution.

* RobotFrameWork module/package `pip install robotframework`
* SeleniumLib module/package `pip install robotframework-seleniumlibrary`

**To install all dependecies together** :- Run `pip3 install -r requirements.txt` (Python 3)

**Note** :- Python **3.7** higher versions required.

### Test Execution Customization 

1. PDF To Word Suite is configured to run in Edge (Browser). It can be changed by altering below line in Sauce_Demo.robot file.

    `Suite Setup    Start    https://www.ilovepdf.com/    Edge`

2. How to run a specific test suite? Below command should help you run specific test suite.

    `robot -d Results TestSuites/PDF_To_Word.robot`

    Tag `-d Results` on above command make sure output files (log.html, report.html, output.xml) are being generated under folder named results.
3. Running Test cases specific to the tags using below command,

    `robot -d Results -i Smoke TestSuites/PDF_To_Word.robot`

    By adding `-i TagName` it invokes specific test cases rather than running whole test suite.
4. Sample UI Automation reports are placed under results folder for reference.
