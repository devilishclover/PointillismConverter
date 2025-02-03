set /p boxSize="Enter the box size: "
imageconvert.exe -b %boxSize%

call convert.bat

pause
