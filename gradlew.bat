@echo off
setlocal

set GRADLE_HOME=C:\Users\Administrator\.gradle\wrapper\dists\gradle-8.2-bin\j2cdg1brpxvqbc9sxxdopggx\gradle-8.2
set PATH=%GRADLE_HOME%\bin;%PATH%

gradle.bat %*
:end
endlocal
