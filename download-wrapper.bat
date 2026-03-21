@echo off
echo Downloading Gradle Wrapper...

set WRAPPER_DIR=C:\Users\Administrator\.qclaw\workspace\RootGuard\gradle\wrapper
set WRAPPER_JAR=%WRAPPER_DIR%\gradle-wrapper.jar

if not exist "%WRAPPER_DIR%" mkdir "%WRAPPER_DIR%"

echo Downloading from GitHub...
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/gradle/gradle/v8.2.0/gradle/wrapper/gradle-wrapper.jar' -OutFile '%WRAPPER_JAR%'"

if exist "%WRAPPER_JAR%" (
    echo Download complete!
    echo File size:
    dir "%WRAPPER_JAR%" | findstr gradle-wrapper.jar
) else (
    echo Download failed!
)

pause