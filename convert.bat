@echo off
setlocal

rem Define the output directory
set "outputDir=%~dp0output"

rem Check if the output directory exists
if not exist "%outputDir%" (
    echo Output folder does not exist: %outputDir%
    pause
    exit /b
)

rem Loop through all SVG files in the output directory
for %%f in ("%outputDir%\*.svg") do (
    rem Convert SVG to PNG
    magick "%%f" "%%~dpnxf.png"
    echo Converted: %%f to %%~dpnxf.png

    rem Delete the original SVG file
    del "%%f"
    echo Deleted: %%f
)

echo All conversions done!
endlocal
pause
