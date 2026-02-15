@ECHO OFF
setlocal
set arg=%1
set img=%arg:.star=.webp%
echo %arg%

FOR /F "tokens=*" %%i in ('type .env') do SET %%i
pixlet render %arg%
pixlet push --api-token %TIDBYT_KEY% %TIDBYT_ID% %img%

endlocal
