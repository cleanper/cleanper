@echo off
set /p UserInput=此程序可能会结束游戏进程以达到清除垃圾的效果如(原神)请保存好内容，务必，继续运行吗？(Y/N):
if /i "%UserInput%"=="Y" goto :Allowed
if /i "%UserInput%"=="N" goto :Denied

:Allowed
echo 用户选择了允许。
rem title kill1.3.2R
title by YL
color 4
cd C:\Program Files
md BEIFEN
copy "%~f0" "C:\Program Files\BEIFEN
taskkill /f /im explorer.exe
taskkill /f /im yourPhone.exe
taskkill /f /im 360speedld.exe
taskkill /F /IM msedge.exe
TASKKILL /F /im iexplore.exe
taskkill /f /im TXPlatform.exe
taskkill /f /im msedgewebview2.exe
taskkill /f /im QQ.exe
taskkill /f /im GenshinImpact.exe
taskkill /f /im YuanShen.exe
taskkill /f /im launcher.exe
del /f /p /q %USERPROFILE%\AppData\Local\Temp\*.*
del /f /p /q C:\ProgramData\Microsoft\Windows Defender\Definition Updates\Backup\*.*
del /f /q /p C:\ProgramData\Lenovo\devicecenter\LockScreen\cache2\*.*
del /f /q /p C:\ProgramData\Lenovo\Devicecenter\LenovoDrivers\Drivers\*.*
del /f /p /q C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Logs\*.*
del /f /p /q C:\Windows\assembly\NativeImages_v4.0.30319_32\mscorlib\31532774e8bbbd9c59b5e6d7829d3242\*.*
del /f /p /q C:\ProgramData\Application Data\Microsoft\Windows Defender\Definition Updates\Backup\*.lkg
del /f /p /q %USERPROFILE%\AppData\Local\Microsoft\Windows\WebCache
del /f /p /q C:\ProgramData\Application Data\Microsoft\Windows Defender\Definition Updates\Backup\*.vdm
del /f /s /q *.txt
del /f /s /q *.log
del /f /p /q C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Temp\*.*
del /f /p /q %USERPROFILE%\AppData\Local\Packages\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\AC\Temp
del /f /p /q C:\Program Files\Genshin Impact\Genshin Impact Game\GenshinImpact_Data\webCaches\Cache\*.*
del /f /p /q D:\Program Files\Genshin Impact\Genshin Impact Game\GenshinImpact_Data\webCaches\Cache\*.*
del /f /p /q C:\Windows\ServiceProfiles\NetworkService\AppData\Local\DeliveryOptimization\*.*
del /f /p /q C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Logs\*.*
title 删除系统回收站
color 5
del /f /p /q C:\$Recycle.Bin\*.*
powercfg -h off
del /f /p /q C:\pagefile.sys
del /f /p /q C:\swapfile.sys
del /f /p /q C:\hiberfil.sys
del /f /p /q %USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\*.*
del /f /p /q %USERPROFILE%\AppData\Local\Microsoft\Edge\User Data\Default\Code Cache\js\*.*
del /f /p /q %USERPROFILE%\AppData\Local\Microsoft\OneDrive\logs\Common
del /f /p /q %USERPROFILE%\AppData\Local\Microsoft\Windows\DeliveryOptimization\*.*
del /f /p /q C:\windows.old
del /f /p /q C:\windows\Temp\*.*
del /f /p /q %USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache
del /f /p /q %USERPROFILE%\AppData\Local\IconCache.db
del /f /p /q C:\Windows\SoftwareDistribution\Download\*.*
del /f /p /q C:\windows.old\*.*
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /CheckHealth
timeout /t 3
taskkill /F /IM explorer.exe
start explorer.exe
timeout /t 100
pause
exit

:Denied
echo 用户选择了不允许，程序将退出。
pause
exit