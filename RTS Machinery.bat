@echo off
setlocal EnableDelayedExpansion

:: Set initial coordinates (x, y, z, a, b, c, d)
set /p x=Enter initial x coordinate: 
set /p y=Enter initial y coordinate: 
set /p z=Enter initial z coordinate: 
set /p a=Enter initial a coordinate: 
set /p b=Enter initial b coordinate: 
set /p c=Enter initial c coordinate: 
set /p d=Enter initial d coordinate: 

:: Display initial coordinates
echo Initial coordinates: (%x%, %y%, %z%, %a%, %b%, %c%, %d%)
echo Initial coordinates: (%x%, %y%, %z%, %a%, %b%, %c%, %d%) >> coordinates_log.txt

:menu
echo.
echo Select an operation:
echo 1. Translate
echo 2. Rotate
echo 3. Scale
echo 4. Plot a Point
echo 5. Attack a Point
echo 6. Defend a Point
echo 7. Build at a Point
echo 8. Exit
set /p choice=Enter your choice (1-8): 

if "%choice%"=="1" goto translate
if "%choice%"=="2" goto rotate
if "%choice%"=="3" goto scale
if "%choice%"=="4" goto plot
if "%choice%"=="5" goto attack
if "%choice%"=="6" goto defend
if "%choice%"=="7" goto build
if "%choice%"=="8" goto end
goto menu

:translate
set /p tx=Enter translation for x: 
set /p ty=Enter translation for y: 
set /p tz=Enter translation for z: 
set /p ta=Enter translation for a: 
set /p tb=Enter translation for b: 
set /p tc=Enter translation for c: 
set /p td=Enter translation for d: 

:: Apply translation
set /a x+=tx
set /a y+=ty
set /a z+=tz
set /a a+=ta
set /a b+=tb
set /a c+=tc
set /a d+=td

echo New coordinates after translation: (%x%, %y%, %z%, %a%, %b%, %c%, %d%)
echo New coordinates after translation: (%x%, %y%, %z%, %a%, %b%, %c%, %d%) >> coordinates_log.txt
goto menu

:rotate
echo Rotation functionality not implemented yet.
goto menu

:scale
set /p sx=Enter scaling factor for x: 
set /p sy=Enter scaling factor for y: 
set /p sz=Enter scaling factor for z: 
set /p sa=Enter scaling factor for a: 
set /p sb=Enter scaling factor for b: 
set /p sc=Enter scaling factor for c: 
set /p sd=Enter scaling factor for d: 

:: Apply scaling
set /a x*=sx
set /a y*=sy
set /a z*=sz
set /a a*=sa
set /a b*=sb
set /a c*=sc
set /a d*=sd

echo New coordinates after scaling: (%x%, %y%, %z%, %a%, %b%, %c%, %d%)
echo New coordinates after scaling: (%x%, %y%, %z%, %a%, %b%, %c%, %d%) >> coordinates_log.txt
goto menu

:plot
set /p px=Enter x coordinate of the point to plot: 
set /p py=Enter y coordinate of the point to plot: 
set /p pz=Enter z coordinate of the point to plot: 
set /p pa=Enter a coordinate of the point to plot: 
set /p pb=Enter b coordinate of the point to plot: 
set /p pc=Enter c coordinate of the point to plot: 
set /p pd=Enter d coordinate of the point to plot: 

:: Plot the point
echo Point coordinates: (%px%, %py%, %pz%, %pa%, %pb%, %pc%, %pd%)
echo Point coordinates: (%px%, %py%, %pz%, %pa%, %pb%, %pc%, %pd%) >> coordinates_log.txt
goto menu

:attack
set /p ax=Enter x coordinate of the point to attack: 
set /p ay=Enter y coordinate of the point to attack: 
set /p az=Enter z coordinate of the point to attack: 
set /p aa=Enter a coordinate of the point to attack: 
set /p ab=Enter b coordinate of the point to attack: 
set /p ac=Enter c coordinate of the point to attack: 
set /p ad=Enter d coordinate of the point to attack: 

:: Attack the point
echo Attacking point coordinates: (%ax%, %ay%, %az%, %aa%, %ab%, %ac%, %ad%)
echo Attacking point coordinates: (%ax%, %ay%, %az%, %aa%, %ab%, %ac%, %ad%) >> coordinates_log.txt
goto menu

:defend
set /p dx=Enter x coordinate of the point to defend: 
set /p dy=Enter y coordinate of the point to defend: 
set /p dz=Enter z coordinate of the point to defend: 
set /p da=Enter a coordinate of the point to defend: 
set /p db=Enter b coordinate of the point to defend: 
set /p dc=Enter c coordinate of the point to defend: 
set /p dd=Enter d coordinate of the point to defend: 

:: Defend the point
echo Defending point coordinates: (%dx%, %dy%, %dz%, %da%, %db%, %dc%, %dd%)
echo Defending point coordinates: (%dx%, %dy%, %dz%, %da%, %db%, %dc%, %dd%) >> coordinates_log.txt
goto menu

:build
set /p bx=Enter x coordinate of the point to build: 
set /p by=Enter y coordinate of the point to build: 
set /p bz=Enter z coordinate of the point to build: 
set /p ba=Enter a coordinate of the point to build: 
set /p bb=Enter b coordinate of the point to build: 
set /p bc=Enter c coordinate of the point to build: 
set /p bd=Enter d coordinate of the point to build: 

:: Build at the point
echo Building at point coordinates: (%bx%, %by%, %bz%, %ba%, %bb%, %bc%, %bd%)
echo Building at point coordinates: (%bx%, %by%, %bz%, %ba%, %bb%, %bc%, %bd%) >> coordinates_log.txt
goto menu

:end
echo Exiting...
endlocal
pause
