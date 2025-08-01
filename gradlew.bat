@echo off
setlocal

set DIR=%~dp0
set JAVA_EXE=%JAVA_HOME%\bin\java.exe

if not exist "%JAVA_EXE%" (
  echo JAVA_HOME is not set or invalid
  exit /b 1
)

"%JAVA_EXE%" -Xmx64m -cp "%DIR%\gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain %*
