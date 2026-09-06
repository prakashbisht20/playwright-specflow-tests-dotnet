@echo off

echo Compiling the project...
rmdir /s /q PlaywrightSpecFlowTests\bin\Debug
dotnet clean
dotnet build

echo Running Tests...
dotnet test

echo Generating Allure reports...
allure serve PlaywrightSpecFlowTests\bin\Debug\net6.0\allure-results

