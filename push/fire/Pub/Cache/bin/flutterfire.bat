@echo off
rem This file was created by pub v3.7.0.
rem Package: flutterfire_cli
rem Version: 1.2.0
rem Executable: flutterfire
rem Script: flutterfire
if exist "C:\Users\pavis\New folder (2)\push\fire\Pub\Cache\global_packages\flutterfire_cli\bin\flutterfire.dart-3.7.0.snapshot"                                                                                                                                                           (
  call dart "C:\Users\pavis\New folder (2)\push\fire\Pub\Cache\global_packages\flutterfire_cli\bin\flutterfire.dart-3.7.0.snapshot"                                                                                                                                                           %*
  rem The VM exits with code 253 if the snapshot version is out-of-date.
  rem If it is, we need to delete it and run "pub global" manually.
  if not errorlevel 253 (
    goto error
  )
  call dart pub global run flutterfire_cli:flutterfire %*
) else (
  call dart pub global run flutterfire_cli:flutterfire %*
)
goto eof
:error
exit /b %errorlevel%
:eof
