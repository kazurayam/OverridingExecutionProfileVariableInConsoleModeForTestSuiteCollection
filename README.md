Overriding Execution Profile Variable in Console Mode for Test Suite Collection --- not working in v6.1.1
====================================================================

This Katalon project was developt to investigate if the issue [Override Profile Variables doesn't work for test suite collections](https://forum.katalon.com/t/override-profile-variables-doesnt-work-for-test-suite-collections/18114) has been fixed or not.

I tested on v6.1.2

When I run the `Test Suites/TS1` in the GUI mode, I saw in the Log a message
```GlobalVariable.URL=http://demoaut.katalon.com/```
this is the default behavior.

When I executed `run-testsuite.bat` in the console, I saw a message
```
GlobalVariable.URL=https://www.google.com/
```
this means that the Gl.URL was overridden by the commandline option `-g_URL=https://www.google.com/'

Then I executed `run-testsuitecollection.bat` in the console, I expected to see a message:
```
GlobalVariable.URL=https://www.amazon.com/
```
but I acually saw the default value.

I think that **-g_XXX=VVVVV** option is not effective for Test Case Collection in v6.1.2.
