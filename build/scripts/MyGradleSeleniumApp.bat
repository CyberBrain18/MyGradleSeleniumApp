@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  MyGradleSeleniumApp startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and MY_GRADLE_SELENIUM_APP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\MyGradleSeleniumApp.jar;%APP_HOME%\lib\selenium-java-4.41.0.jar;%APP_HOME%\lib\selenium-chrome-driver-4.41.0.jar;%APP_HOME%\lib\selenium-devtools-v143-4.41.0.jar;%APP_HOME%\lib\selenium-devtools-v144-4.41.0.jar;%APP_HOME%\lib\selenium-devtools-v145-4.41.0.jar;%APP_HOME%\lib\selenium-edge-driver-4.41.0.jar;%APP_HOME%\lib\selenium-firefox-driver-4.41.0.jar;%APP_HOME%\lib\selenium-ie-driver-4.41.0.jar;%APP_HOME%\lib\selenium-safari-driver-4.41.0.jar;%APP_HOME%\lib\selenium-support-4.41.0.jar;%APP_HOME%\lib\selenium-chromium-driver-4.41.0.jar;%APP_HOME%\lib\selenium-remote-driver-4.41.0.jar;%APP_HOME%\lib\selenium-http-4.41.0.jar;%APP_HOME%\lib\guava-33.5.0-jre.jar;%APP_HOME%\lib\error_prone_annotations-2.41.0.jar;%APP_HOME%\lib\j2objc-annotations-3.1.jar;%APP_HOME%\lib\selenium-manager-4.41.0.jar;%APP_HOME%\lib\selenium-json-4.41.0.jar;%APP_HOME%\lib\selenium-os-4.41.0.jar;%APP_HOME%\lib\selenium-api-4.41.0.jar;%APP_HOME%\lib\jspecify-1.0.0.jar;%APP_HOME%\lib\auto-service-annotations-1.1.1.jar;%APP_HOME%\lib\opentelemetry-exporter-logging-1.59.0.jar;%APP_HOME%\lib\opentelemetry-sdk-extension-autoconfigure-1.59.0.jar;%APP_HOME%\lib\opentelemetry-sdk-extension-autoconfigure-spi-1.59.0.jar;%APP_HOME%\lib\opentelemetry-sdk-1.59.0.jar;%APP_HOME%\lib\opentelemetry-sdk-trace-1.59.0.jar;%APP_HOME%\lib\opentelemetry-sdk-metrics-1.59.0.jar;%APP_HOME%\lib\opentelemetry-sdk-logs-1.59.0.jar;%APP_HOME%\lib\opentelemetry-sdk-common-1.59.0.jar;%APP_HOME%\lib\opentelemetry-api-1.59.0.jar;%APP_HOME%\lib\opentelemetry-context-1.59.0.jar;%APP_HOME%\lib\byte-buddy-1.18.5.jar;%APP_HOME%\lib\opentelemetry-common-1.59.0.jar;%APP_HOME%\lib\failureaccess-1.0.3.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar

@rem Execute MyGradleSeleniumApp
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %MY_GRADLE_SELENIUM_APP_OPTS%  -classpath "%CLASSPATH%" App %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable MY_GRADLE_SELENIUM_APP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%MY_GRADLE_SELENIUM_APP_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
