@echo off
cls
Echo � Galactic Empire 3.0 Update Utility
echo � (c) Copyright 1993 M.B. Murdock & Assoc.
echo �

if "#%1#" == "##" goto noopt1
if "#%2#" == "##" goto noopt2

copy %1updge*.zip %2 >nul
%2\
cd %2

%1pkunzip -o %2\updge*.zip 
del %2\mbmge*.mcv >nul

if not exist mbmgemp.dll goto notgood
if not exist mbmgemsg.msg goto notgood
if not exist mbmgehlp.msg goto notgood
if not exist mbmgemp.doc goto notgood
if not exist mbmgemp.mdf goto notgood
if not exist mbmgemnu.txt goto notgood

if not exist geinst.doc goto notgood
if not exist gereadme.doc goto notgood
if not exist order.frm goto notgood

if not exist mbmgeshp.new goto notgood
if not exist mbmgeusr.new goto notgood
if not exist mbmgeplt.new goto notgood
if not exist mbmgemal.new goto notgood

if not exist mbmgeshp.dat goto notgood
if not exist mbmgeusr.dat goto notgood
if not exist mbmgeplt.dat goto notgood
if not exist mbmgemal.dat goto notgood

echo � Update Complete! Please install Galactic Empire on your menu
echo � according to the procedures in the MAJORBBS OPERATIONS GUIDE.
goto end

:notstrt
echo � *Error* Files already exist. If you are performing a complete install
echo �         and wish to reset the databases type "DEL MBMGE*.*" and press
echo �         return. Then repeat the installation procedure. If you do not
echo �         wish to install virgin (empty) databases please refer to the
echo �         Update procedure in the Galactic Empire Operations Guide.
goto end

:notgood
echo �         Installation Error. Please check! Call (813) 545-8050
echo �         for customer help if problem cannot be resolved.
goto end


:notgood
echo � *Error* File Installation Error. Please check! Call (813) 545-8050
echo �         for customer help if problem cannot be resolved.
goto end


:noopt1
echo �
Echo � *Error* No source path specified.
echo �
goto thisway
:noopt2
echo �
Echo � *Error* No destination path specified.
echo �
goto thisway

:thisway
echo �
echo � Usage: Update [source drive] [dest path]
Echo �
echo � Example:  Update A: C:\BBSV6
echo �
goto end
:end
