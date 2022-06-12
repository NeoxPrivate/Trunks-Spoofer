@echo off
@ ECHO. 
@ ECHO.
@echo off
echo Release and Renew DHCP
@ ECHO.
@echo off
: Disable Static IP/Enable DHCP    Remove DNS     Enable NICs
for /f "skip=2 tokens=3*" %%i in ('netsh interface show interface') do (
netsh int ip set address "%%j" dhcp 
netsh int ip set dns "%%j" dhcp 
netsh interface set interface name="%%j" admin=enabled 
)
@ ECHO.													
@ ECHO.
@ ECHO.
echo Flush DNS: 
@echo off
ipconfig /flushdns 
@ ECHO.
@ ECHO.
@ ECHO.
echo Clear ARP/Route table:
@echo off
netsh interface ip delete arpcache
@ ECHO.
@ ECHO.
@ ECHO.
echo Clear SSL state:
@echo off
certutil -URLCache * delete 
@ ECHO.
@ ECHO.
@ ECHO.
echo Reset TCP/IP:
@echo off
netsh int ip reset 
netsh int ipv4 reset 
netsh int ipv6 reset 

@ ECHO.
@ ECHO.
echo Clear Winsock:
@echo off
netsh winsock reset 
@ ECHO.


@echo off

					
@ ECHO ------------------------------------------------------------------------------------------------------------------------
@ ECHO                  	            	A̷Z̷U̷L̷E̷ ̷# ̷1̷3̷3̷7̷
@ ECHO ------------------------------------------------------------------------------------------------------------------------

pause

vssadmin delete shadows /all /Quiet
sc stop cpuz150
sc stop vgt
sc stop vgrl
sc stop vgk
sc stop vgc
sc delete vgrl
sc delete vgk
sc delete vgc
sc delete vg
taskkill /f /im vgtray.exe
sc delete cpuz150
sc config wuauserv start= disabled
net stop wuauserv
sc config bits start= disabled
net stop bits
sc config dosvc start= disabled
net stop dosvc
sc config UsoSvc start= disabled
net stop UsoSvc
rmdir /s /q "C:\Program Files\Riot Vanguard"
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vgk\Security" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vgk" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vgc\Security" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\vgc" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Riot Vanguard" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\VALORANT-Win64-Shipping.exe" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{FA99DFC7-6AC2-453A-A5E2-5E2AFF4507BD}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{F4E57C4B-2036-45F0-A9AB-443BCFE33D9F}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{F2A1CB5A-E3CC-4A2E-AF9D-505A7009D442}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CAA59E3C-4792-41A5-9909-6A6A8D32490E}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{BCB48336-4DDD-48FF-BB0B-D3190DACB3E2}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{B267E3AD-A825-4A09-82B9-EEC22AA3B847}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{A3D53349-6E61-4557-8FC7-0028EDCEEBF6}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{9E04CAB2-CC14-11DF-BB8C-A2F1DED72085}\Count" /f
reg delete "HKEY_CLASSES_ROOT\riotclient" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\Package\181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\Package\181\93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\PackageAndPackageRelativeApplicationId\181^App" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\PackageAndPackageRelativeApplicationId\181^App\93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\3^93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\3^93\ac" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\4^93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\4^93\ad" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181\1a84" /f
REG DELETE "HKLM\SOFTWARE\WOW6432Node\EasyAntiCheat" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\Security" /f
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat" /f
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Security" /f
REG DELETE "HKCU\Software\Classes\Installer\Dependencies" /v MSICache /f
REG DELETE "HKCU\Software\Microsoft\Direct3D" /v WHQLClass /f
REG DELETE "HKLM\Hardware\Description\System\CentralProcessor\0" /v ProcessorNameString /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\Package\181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\Package\181\93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\PackageAndPackageRelativeApplicationId\181^App" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\PackageAndPackageRelativeApplicationId\181^App\93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\3^93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\3^93\ac" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\4^93" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\4^93\ad" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\182" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\Origins\kz2LMQg4+pNfXggv65DcWFQ9SiekWR4B4WMWT+pcqbU: 0x00000002" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\Origins\4JSyFFDDKUMXDyK2USgAjbiksFnqOb3f8RPZBPSpEfU: 0x00000002" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\Origins\62bDlCzxB/xxIWLkQdDRYcAqhmZhNOMUtjhRkAgTvkQ: 0x00000002" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Package: 0x00000181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Index: 0x00000000" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Flags: 0x00000000" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\PackageRelativeApplicationId: "App"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\ApplicationUserModelId: "Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Executable: "GameBar.exe"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Entrypoint: "GameBar.App"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\StartPage: (NULL!)" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\_IndexKeys:  50 61 63 6B 61 67 65 5C 31 38 31 5C 39 33 00 50 61 63 6B 61 67 65 41 6E 64 50 61 63 6B 61 67 65 52 65 6C 61 74 69 76 65 41 70 70 6C 69 63 61 74 69 6F 6E 49 64 5C 31 38 31 5E 41 70 70 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\Application: 0x00000093" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\User: 0x00000003" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\ApplicationUserModelId: "Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\_IndexKeys:  55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 5C 33 5E 39 33 00 55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 55 73 65 72 4D 6F 64 65 6C 49 64 5C 33 5E 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 21 41 70 70 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\Application: 0x00000093" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\User: 0x00000004" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\ApplicationUserModelId: "Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\_IndexKeys:  55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 5C 34 5E 39 33 00 55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 55 73 65 72 4D 6F 64 65 6C 49 64 5C 34 5E 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 21 41 70 70 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageFullName: "Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageFamily: 0x0000004E" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageType: 0x00000008" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\Flags: 0x00000000" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageOrigin: 0x00000003" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\Volume: 0x00000001" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\InstalledLocation: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\_IndexKeys:  50 61 63 6B 61 67 65 46 61 6D 69 6C 79 5C 34 65 5C 31 38 30 00 50 61 63 6B 61 67 65 46 75 6C 6C 4E 61 6D 65 5C 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 31 2E 34 31 2E 32 34 30 30 31 2E 30 5F 6E 65 75 74 72 61 6C 5F 7E 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageFullName: "Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageFamily: 0x0000004E" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageType: 0x00000001" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\Flags: 0x00000000" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageOrigin: 0x00000003" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\Volume: 0x00000001" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\InstalledLocation: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\_IndexKeys:  50 61 63 6B 61 67 65 46 61 6D 69 6C 79 5C 34 65 5C 31 38 31 00 50 61 63 6B 61 67 65 46 75 6C 6C 4E 61 6D 65 5C 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 31 2E 34 31 2E 32 34 30 30 31 2E 30 5F 78 36 34 5F 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageFullName: "Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageFamily: 0x0000004E" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageType: 0x00000004" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\Flags: 0x00000000" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageOrigin: 0x00000003" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\Volume: 0x00000001" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\InstalledLocation: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe"" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\_IndexKeys:  50 61 63 6B 61 67 65 46 61 6D 69 6C 79 5C 34 65 5C 31 38 32 00 50 61 63 6B 61 67 65 46 75 6C 6C 4E 61 6D 65 5C 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 31 2E 34 31 2E 32 34 30 30 31 2E 30 5F 6E 65 75 74 72 61 6C 5F 73 70 6C 69 74 2E 73 63 61 6C 65 2D 31 30 30 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80\Package: 0x00000180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80\User: 0x00000003" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80\_IndexKeys:  55 73 65 72 5C 33 5C 31 61 38 30 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 33 5E 31 38 30 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81\Package: 0x00000181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81\User: 0x00000003" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81\_IndexKeys:  55 73 65 72 5C 33 5C 31 61 38 31 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 33 5E 31 38 31 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82\Package: 0x00000182" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82\User: 0x00000003" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82\_IndexKeys:  55 73 65 72 5C 33 5C 31 61 38 32 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 33 5E 31 38 32 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83\Package: 0x00000180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83\User: 0x00000004" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83\_IndexKeys:  55 73 65 72 5C 34 5C 31 61 38 33 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 34 5E 31 38 30 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84\Package: 0x00000181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84\User: 0x00000004" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84\_IndexKeys:  55 73 65 72 5C 34 5C 31 61 38 34 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 34 5E 31 38 31 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\VolatileNotifications\41C64E6DA3D39855:  01 00 04 80 00 00 00 00 00 00 00 00 00 00 00 00 14 00 00 00 02 00 1C 00 01 00 00 00 00 00 14 00 03 00 00 00 01 01 00 00 00 00 00 05 0B 00 00 00 04 00 00 00" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\VolatileNotifications\41C64E6DA3CF4055:  01 00 04 80 00 00 00 00 00 00 00 00 00 00 00 00 14 00 00 00 02 00 1C 00 01 00 00 00 00 00 14 00 03 00 00 00 01 01 00 00 00 00 00 05 0B 00 00 00 04 00 00 00" /f
REG DELETE "HKLM\SOFTWARE\WOW6432Node\EasyAntiCheat" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862software:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 2E 64 61 74 00 00" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_sid:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 2E 64 61 74 00 00" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_classes:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 43 6C 61 73 73 65 73 2E 64 61 74 00 00" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Control\hivelist\\REGISTRY\WC\Siloe6b4a779-bfe1-62d8-47ac-fa19e9becbbecom:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 5F 43 4F 4D 31 35 2E 64 61 74 00 00" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862com:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 2E 64 61 74 00 00" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserType: 0x00000010" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\Security\Security:  01 00 14 80 A0 00 00 00 AC 00 00 00 14 00 00 00 30 00 00 00 02 00 1C 00 01 00 00 00 02 80 14 00 FF 01 0F 00 01 01 00 00 00 00 00 01 00 00 00 00 02 00 70 00 05 00 00 00 00 00 14 00 30 00 02 00 01 01 00 00 00 00 00 01 00 00 00 00 00 00 14 00 FD 01 02 00 01 01 00 00 00 00 00 05 12 00 00 00 00 00 18 00 FF 01 0F 00 01 02 00 00 00 00 00 05 20 00 00 00 20 02 00 00 00 00 14 00 8D 01 02 00 01 01 00 00 00 00 00 05 04 00 00 00 00 00 14 00 8D 01 02 00 01 01 00 00 00 00 00 05 06 00 00 00 01 01 00 00 00 00 00 05 12 00 00 00 01 01 00 00 00 00 00 05 12 00 00 00" /f
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862software:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 2E 64 61 74 00 00" /f
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_sid:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 2E 64 61 74 00 00" /f
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_classes:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 43 6C 61 73 73 65 73 2E 64 61 74 00 00" /f
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\\REGISTRY\WC\Siloe6b4a779-bfe1-62d8-47ac-fa19e9becbbecom:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 5F 43 4F 4D 31 35 2E 64 61 74 00 00" /f
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862com:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 2E 64 61 74 00 00" /f
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a84" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180\1a80" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181\1a81" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182\1a82" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180\1a83" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181\1a84" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\Type: 0x00000010" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\Start: 0x00000003" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\ErrorControl: 0x00000001" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\ImagePath: ""C:\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.exe""" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\DisplayName: "EasyAntiCheat"" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\WOW64: 0x0000014C" /f
REG DELETE "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\ObjectName: "LocalSystem"" /f
REG DELETE "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher" /f
REG DELETE "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
REG DELETE "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
REG DELETE "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
REG DELETE "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher" /f
REG DELETE "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
REG DELETE "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
REG DELETE "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\0" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000205B6" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000403D6" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000405DE" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000060286" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000009042E" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000A03B4" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000A0430" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000B0532" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000B05D6" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000C0430" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000C0586" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000E03D2" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000E0406" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000100430" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001103EE" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000011041E" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000012047E" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001303EE" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001304F2" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000014041E" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001703E6" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000170440" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001704FC" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\StreamMRU" /f
REG DELETE "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5CS-1-5-21-2532382528-581214834-2534474248-1001-MergedResources-2.pri" /f
REG DELETE "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher" /f
REG DELETE "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
REG DELETE "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
REG DELETE "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
REG DELETE "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher" /f
REG DELETE "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
REG DELETE "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
REG DELETE "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f  
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Installer\Dependencies" /v MSICache /f
del /s /q /f "%systemdrive%\$Recycle.bin"
del /s /q /f "D:\System Volume Information\tracking.log"
del /s /q /f "E:\System Volume Information\tracking.log"
del /s /q /f "F:\System Volume Information\tracking.log"
del /s /q /f "%systemdrive%\Windows\win.ini"
del /s /q /f "%systemdrive%\Windows\vgkbootstatus.dat"
del /s /q /f "%systemdrive%\Windows\memory.dmp"
del /s /q /f "%systemdrive%\Windows\WindowsUpdate.log"
del /s /q /f "%systemdrive%\Windows\System32\LogFiles\WMI\Wifi.etl"
del /s /q /f "%systemdrive%\Windows\System32\LogFiles\WMI\RadioMgr.etl"
del /s /q /f "%systemdrive%\Windows\System32\LogFiles\WMI\NtfsLog.etl"
del /s /q /f "%systemdrive%\Windows\System32\LogFiles\WMI\NetCore.etl"
del /s /q /f "%systemdrive%\Windows\System32\LogFiles\WMI\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace.etl"
del /s /q /f "%systemdrive%\Windows\System32\LogFiles\WMI\LwtNetLog.etl"
del /s /q /f "%systemdrive%\Windows\ServiceProfiles\NetworkService\NTUSER.DAT"
del /s /q /f "%systemdrive%\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\Windows\qwavecache.dat"
del /s /q /f "%systemdrive%\Windows\Logs\DISM\dism.log"
del /s /q /f "%systemdrive%\Windows\DirectX.log"
del /s /q /f "%systemdrive%\Users\Public\Desktop\VALORANT.lnk"
del /s /q /f "%USERPROFILE%\ntuser.ini"
del /s /q /f "%USERPROFILE%\ntuser.dat.LOG2"
del /s /q /f "%USERPROFILE%\ntuser.dat.LOG1"
del /s /q /f "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache\IE\container.dat"
del /s /q /f "%USERPROFILE%\NTUSER.DAT"
del /s /q /f "%USERPROFILE%\AppData\Local\UnrealEngine\4.23\Saved\Config\WindowsClient\Manifest.ini"
del /s /q /f "%USERPROFILE%\AppData\Local\Microsoft\Vault\UserProfileRoaming\Latest.dat"
del /s /q /f "%USERPROFILE%\AppData\Local\Microsoft\OneDrive\logs\Common\DeviceHealthSummaryConfiguration.ini"
del /s /q /f "%USERPROFILE%\AppData\Local\IconCache.db"
del /s /q /f "%USERPROFILE%\AppData\Local\AC\INetCookies\ESE\container.dat"
del /s /q /f "%systemdrive%\System Volume Information\tracking.log"
del /s /q /f "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Riot Games\VALORANT.lnk"
del /s /q /f "%systemdrive%\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx"
del /s /q /f "%systemdrive%\Config.Msi"
del /s /q /f "%systemdrive%\Riot Games\VALORANT\live\Manifest_NonUFSFiles_Win64.txt"
del /s /q /f "%systemdrive%\Riot Games\VALORANT\live\Engine\Binaries\ThirdParty\CEF3\Win64\icudtl.dat"
del /s /q /f "%systemdrive%\Riot Games\Riot Client\UX\natives_blob.bin"
del /s /q /f "%systemdrive%\Riot Games\Riot Client\UX\icudtl.dat"
del /s /q /f "%systemdrive%\Riot Games\Riot Client\UX\Plugins\plugin-manifest.json"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\Temporary Internet Files"
RMDIR /S /Q "%systemdrive%\Windows\logs\CBS"
RMDIR /S /Q "%systemdrive%\Windows\Temp"
RMDIR /S /Q "%systemdrive%\Windows\System32\config\systemprofile\AppData\Local\ScreenTime"
RMDIR /S /Q "%systemdrive%\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Vault\UserProfileRoaming"
RMDIR /S /Q "%systemdrive%\Windows\System32\config\systemprofile\AppData\Local\D3DSCache"
RMDIR /S /Q "%systemdrive%\Windows\System32\config\TxR"
RMDIR /S /Q "%systemdrive%\Windows\System32\WDI\LogFiles\StartupInfo"
RMDIR /S /Q "%systemdrive%\Windows\System32\WDI\LogFiles"
RMDIR /S /Q "%systemdrive%\Windows\SoftwareDistribution\"
RMDIR /S /Q "%systemdrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\deliveryOptimization\Logs"
RMDIR /S /Q "%systemdrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\State"
RMDIR /S /Q "%USERPROFILE%\Local Settings\Riot Games"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Riot Games"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\Microsoft\Protect"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\VirtualStore"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\VALORANT"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\UnrealEngine"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Temp"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\DeviceSearchCache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\ConstraintIndex"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WebCache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WER"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCookies"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\IEDownloadHistory"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\IECompatUaCache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\IECompatCache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\Caches"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Terminal Server Client\Cache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Internet Explorer\CacheStorage"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\D3DSCache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\CrashDumps"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\ConnectedDevicesPlatform"
RMDIR /S /Q "%systemdrive%\Riot Games"
RMDIR /S /Q "%systemdrive%\ProgramData\Riot Games"
RMDIR /S /Q "%systemdrive%\ProgramData\NVIDIA Corporation\NV_Cache"
RMDIR /S /Q "%systemdrive%\ProgramData\NVIDIA Corporation\Drs\nvAppTimestamps"
RMDIR /S /Q "%systemdrive%\ProgramData\Microsoft\Windows\WER"
RMDIR /S /Q "%systemdrive%\ProgramData\Application Data\Riot Games"
RMDIR /S /Q "%systemdrive%\Program Files\Riot Vanguard"
RMDIR /S /Q "%systemdrive%\Program Files\Riot Games"
RMDIR /S /Q "%systemdrive%\PerfLogs"
del /s /q /f "%systemdrive%\desktop.ini"
del /s /q /f "%systemdrive%\Windows\INF\setupapi.setup.log"
del /s /q /f "%systemdrive%\Windows\INF\setupapi.dev.log"
del /s /q /f "%systemdrive%\Users\Public\Libraries\collection.dat"
del /s /q /f "%systemdrive%\Users\Default\NTUSER.DAT"
del /s /q /f "%systemdrive%\System Volume Information\WPSettings.dat"
del /s /q /f "%systemdrive%\Recovery\ntuser.sys"
del /s /q /f "%systemdrive%\ProgramData\ntuser.pol"
del /s /q /f "%systemdrive%\Windows\System32\restore\MachineGuid.txt"
RMDIR /S /Q "%systemdrive%\Users\Public\Shared Files"
RMDIR /S /Q "%systemdrive%\Users\Public\Libraries"
RMDIR /S /Q "%systemdrive%\System Volume Information\IndexerVolumeGuid"
RMDIR /S /Q "%systemdrive%\MSOCache"
netsh winsock reset
taskkill /f /im epicgameslauncher.exe"
taskkill /f /im FortniteLauncher.exe"
taskkill /f /im FortniteClient-Win64-Shipping_EAC.exe"
taskkill /f /im FortniteClient-Win64-Shipping_BE.exe"
taskkill /f /im FortniteClient-Win64-Shipping.exe"
del /s /q /f "%systemdrive%\Windows\Minidump\*.*"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\Origin"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Origin"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Ubisoft Game Launcher\spool"
RMDIR /S /Q "%systemdrive%\Program Files (x86)\Ubisoft\Ubisoft Game Launcher\savegames"
RMDIR /S /Q "%systemdrive%\Program Files (x86)\Ubisoft\Ubisoft Game Launcher\logs"
RMDIR /S /Q "%systemdrive%\Program Files (x86)\Ubisoft\Ubisoft Game Launcher\cache"
RMDIR /S /Q "%localappdata%\EpicGamesLauncher"
del /s /f /a:h /a:a /q "C:\Program Files (x86)\Steam\config\loginusers.vdf"
del /s /f /a:h /a:a /q %systemdrive%\desktop.ini"
del /s /f /a:h /a:a /q %systemdrive%\Intel\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\temp\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\appcompat\appraiser\AltData\Appraiser_Data.ini"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\WindowsUpdate.log"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\TEMP\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\spp\store\2.0\cache\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\config\systemprofile\AppData\Local\Microsoft\XboxLive\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\WDI\LogFiles\StartupInfo\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\LogFiles\WMI\RtBackup"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCookies\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCache\Content.IE5\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCache\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Public\Libraries\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\Logs\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Windows\CbsTemp\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Users\Public\Libraries\collection.dat\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Users\Public\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Users\All Users\NVIDIA\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Users\All Users\Microsoft\Windows\WER\Temp\WER95DF.tmp.mdmp"
del /s /f /a:h /a:a /q "%systemdrive%\Users\All Users\Microsoft\Windows\WER\Temp\WER5CC2.tmp.xml"
del /s /f /a:h /a:a /q "%USERPROFILE%\ntuser.dat.LOG2"
del /s /f /a:h /a:a /q "%USERPROFILE%\ntuser.dat.LOG1"
del /s /f /a:h /a:a /q "%USERPROFILE%\Videos\Captures\desktop.ini"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\Notepad++\backup\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations\b05132b02959bc64.automaticDestinations-ms\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\Autom\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\CloudStore\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Roaming\EasyAntiCheat\*.*
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\UnrealEngine\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Temp\ecache.bin"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Temp\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Speech Graphics\Carnival\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\PlaceholderTileLogoFolder\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\LocalState\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.ZuneVideo_8wekyb3d8bbwe\LocalState\Database\anonymous\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\LocalCache\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\AC\Microsoft\CryptnetUrlCache\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\AC\INetHistory\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\AC\INetCookies\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\AC\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\TempState\CortanaUnifiedTileMoccc(
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\TempState\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\Settings\settings.dat.LOG1\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AppData\Indexed DB\edb.log\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AppData\Indexed DB\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AC\INetCache\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AC\AppCache\YVV2MEXU\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.SkypeApp_kzf8qxf38zg5c\LocalState\DiagOutputDir\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AppData\User\Default\Indexed DB\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\MicrosoftEdge\User\Default\Recovery\Active\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\NVIDIA Corporation\GfeSDK\FORTNI~1.LOG"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\NVIDIA Corporation\GfeSDK\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\NVIDIA Corporation\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.dat\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WebCache\V0100024.log"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WebCache\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WER\ERC\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\UsrClass.dat.LOG2"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\UsrClass.dat.LOG1"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\SettingSync\remotemetastore\v1\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\SettingSync\metastore\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\Safety\edge\remote\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache\IE\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\History\History.IE5\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\History\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\OneDrive\settings\Personal\logUploaderSettings_temp.ini\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\OneDrive\settings\Personal\logUploaderSettings.ini\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\OneDrive\logs\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Internet Explorer\CacheStorage\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Feeds\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Microsoft\Feeds Cache"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\FortniteGame\Saved\Logs\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\FortniteGame\Saved\LMS\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\FortniteGame\Saved\Demos\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\FortniteGame\Saved\Cloud\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\EpicGamesLauncher\Saved\webcache\GPUCache\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\EpicGamesLauncher\Saved\webcache\Cookies"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\EpicGamesLauncher\Saved\webcache\Cache\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\EpicGamesLauncher\Saved\Logs\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\CrashDumps\BACKGR~2.DMP"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Comms\Unistore\data\temp\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Comms\Unistore\data\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\Comms\UnistoreDB\USS.jtx\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\Local\AMD\DxCache\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*.*"
del /s /f /a:h /a:a /q "%USERPROFILE%\AppData\LocalLow\Microsoft\CryptnetUrlCache\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\System Volume Information\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Recovery\ntuser.sys"
del /s /f /a:h /a:a /q "%systemdrive%\Recovery\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\USOShared\Logs\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\NVIDIA\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\XboxLive\NSALCache\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\WER\Temp\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\ClipSVC\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\AppRepository\Packages\Microsoft.XboxGameOverlay_1.42.4001.0_x64__8wekyb3d8bbwe\ActivationStore.dat"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Diagnosis\EventStore.db-wal"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\Rules\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\NetworksCache\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Program Files\WindowsApps\Microsoft.LanguageExperiencePacken-GB_17763.9.22.0_neutral__8wekyb3d8bbwe\Windows\System32\driverstore\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\Shared Files\*.*"
del /s /f /a:h /a:a /q "%ProgramFiles(x86)%\EasyAntiCheat\EasyAntiCheat.sys\*.*"
del /s /f /a:h /a:a /q "%ProgramFiles(x86)%\Common Files\BattlEye\BEDaisy.sys\*.*"
del /s /f /a:h /a:a /q "%ProgramFiles(x86)%\Common Files\BattlEye\*.*"
del /s /f /a:h /a:a /q "%ProgramFiles(x86)%\AMD\CNext\CCCSlim\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\MSOCache\{71230000-00E2-0000-1000-00000000}\Setup.dat\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\MSOCache\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Intel\*.*"
del /s /f /a:h /a:a /q "%systemdrive%\Amd\*.*"
RMDIR /S /Q f:\$Recycle.Bin
RMDIR /S /Q e:\$Recycle.Bin
RMDIR /S /Q d:\$Recycle.Bin
RMDIR /S /Q %systemdrive%\$Recycle.Bin
RMDIR /S /Q "%systemdrive%\desktop.ini"
RMDIR /S /Q "%systemdrive%\Windows\temp"
RMDIR /S /Q "%systemdrive%\Windows\System32\LogFiles\WMI\RtBackup"
RMDIR /S /Q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCookies"
RMDIR /S /Q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCache\Content.IE5"
RMDIR /S /Q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData"
RMDIR /S /Q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content"
RMDIR /S /Q "%systemdrive%\Windows\Public\Libraries"
RMDIR /S /Q "%systemdrive%\Windows\Prefetch"
RMDIR /S /Q "%systemdrive%\Windows\Logs"
RMDIR /S /Q "%systemdrive%\Users\Public\Libraries\collection.dat"
RMDIR /S /Q "%systemdrive%\Users\Public"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\UnrealEngineLauncher"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Speech Graphics\Carnival"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\TempState"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\LocalCache"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AppData\Indexed DB"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache\IE\AW1C2HQS\"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\History\History.IE5"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\OneDrive\settings\Personal"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Feeds"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\FortniteGame"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\BattlEye"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\EasyAntiCheat"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Publishers"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Programs\Common"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\Comms"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\CEF"
RMDIR /S /Q "%systemdrive%\Recovery\ntuser.sys"
RMDIR /S /Q "%systemdrive%\Recovery"
RMDIR /S /Q "%systemdrive%\ProgramData\Microsoft\Windows\WER\Temp"
RMDIR /S /Q "%systemdrive%\ProgramData\Microsoft\Diagnosis\EventStore.db-wal"
RMDIR /S /Q "%systemdrive%\ProgramData\Microsoft\Diagnosis\DownloadedSettings"
RMDIR /S /Q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\Rules"
RMDIR /S /Q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\NetworksCache"
RMDIR /S /Q "%systemdrive%\ProgramData\AMD\PPC\apprecord.csv\"
RMDIR /S /Q "%systemdrive%\MSOCache\{71230000-00E2-0000-1000-00000000}\Setup.dat"
RMDIR /S /Q "%systemdrive%\Intel"
RMDIR /S /Q "%localappdata%\UnrealEngine"
RMDIR /S /Q "%localappdata%\FortniteGame"
C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe  Remove-Item -Path 'HKLM:SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\Unmanaged\*' -Recurs
C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe  Remove-Item -Path 'HKLM:SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Nla\Cache\*' -Recurs
del /s /q "C:\Windows\INF\*.*" 
REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments\ /v SaveZoneInformation /t REG_DWORD /d 1 /f"

reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\VALORANT-Win64-Shipping.exe" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{FA99DFC7-6AC2-453A-A5E2-5E2AFF4507BD}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{F4E57C4B-2036-45F0-A9AB-443BCFE33D9F}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{F2A1CB5A-E3CC-4A2E-AF9D-505A7009D442}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CAA59E3C-4792-41A5-9909-6A6A8D32490E}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{BCB48336-4DDD-48FF-BB0B-D3190DACB3E2}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{B267E3AD-A825-4A09-82B9-EEC22AA3B847}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{A3D53349-6E61-4557-8FC7-0028EDCEEBF6}\Count" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{9E04CAB2-CC14-11DF-BB8C-A2F1DED72085}\Count" /f
reg delete "HKEY_CLASSES_ROOT\riotclient" /f
reg delete "HKEY_CURRENT_USER\Software\WOW6432Node\Epic Games" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\com.epicgames.launcher" /f
reg delete "HKEY_USERS\S-1-5-21-2097722829-2509645790-3642206209-1001\Software\Epic Games" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f
reg delete "HKEY_CURRENT_USER\Software\WOW6432Node\Epic Games" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\com.epicgames.launcher" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Identifiers" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Hardware Survey" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig" /f
reg delete "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control" /v SystemStartOptions /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f
reg delete "HKEY_CURRENT_USER\Software\WOW6432Node\Epic Games" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\com.epicgames.launcher" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Hardware Survey" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Identifiers" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Hardware Survey" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Identifiers" /f
reg delete "HKEY_CLASSES_ROOT\com.epicgames.launcher" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\com.epicgames.launcher" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Epic Games" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\EpicGames" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\EpicGames" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Epic Games" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Epic Games" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\EpicGames" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Installer\Dependencies" /v MSICache /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Direct3D" /v WHQLClass /f
reg delete "HKEY_CLASSES_ROOT\com.epicgames.launcher" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Epic Games" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\EpicGames" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Installer\Dependencies" /v MSICache /f
reg delete "HKEY_CURRENT_USER\Software\Classes\com.epicgames.launcher" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Hardware Survey" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Identifiers" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Direct3D" /v WHQLClass /f
reg delete "HKEY_CURRENT_USER\Software\WOW6432Node\Epic Games" /f
reg delete "HKEY_LOCAL_MACHINE\Hardware\Description\System\CentralProcessor\0" /v ProcessorNameString /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\com.epicgames.launcher" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Epic Games" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\EpicGames" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Epic Games" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\EpicGames" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig" /f
reg delete "HKEY_LOCAL_MACHINE\Software\Epic Games" /f
reg delete "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control" /v SystemStartOptions /f
reg delete "HKEY_USERS\S-1-5-21-2097722829-2509645790-3642206209-1001\Software\Epic Games" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App\windows.protocol" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App\windows.protocol\ms-gamebarservices" /f
reg delete "HKLM\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\Package\181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\Package\181\93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\PackageAndPackageRelativeApplicationId\181^App" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\PackageAndPackageRelativeApplicationId\181^App\93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\3^93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\3^93\ac" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\4^93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\4^93\ad" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\182" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe\182" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a80" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a81" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a82" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a83" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a84" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180\1a80" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181\1a81" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182\1a82" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180\1a83" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181\1a84" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x86__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\S-1-5-21-2532382528-581214834-2534474248-1001\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\S-1-5-21-2532382528-581214834-2534474248-1001\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\S-1-5-21-2532382528-581214834-2534474248-1001\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x86__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\EasyAntiCheat" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\Security" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Security" /f
reg delete "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher" /f
reg delete "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
reg delete "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
reg delete "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
reg delete "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher" /f
reg delete "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
reg delete "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
reg delete "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\5e4eddc4_0" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\5e4eddc4_0\{219ED5A0-9CBF-4F3A-B927-37C9E5C5F14F}" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\0" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000205B6" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000403D6" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000405DE" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000060286" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000009042E" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000A03B4" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000A0430" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000B0532" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000B05D6" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000C0430" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000C0586" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000E03D2" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000E0406" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000100430" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001103EE" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000011041E" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000012047E" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001303EE" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001304F2" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000014041E" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001703E6" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000170440" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001704FC" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\StreamMRU" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5CS-1-5-21-2532382528-581214834-2534474248-1001-MergedResources-2.pri" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5CS-1-5-21-2532382528-581214834-2534474248-1001-MergedResources-2.pri\1d50f44cf1a0499" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5CS-1-5-21-2532382528-581214834-2534474248-1001-MergedResources-2.pri\1d50f44cf1a0499\87f345c2" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\discord-432980957394370572" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\discord-432980957394370572\DefaultIcon" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\discord-432980957394370572\shell" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\discord-432980957394370572\shell\open" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\discord-432980957394370572\shell\open\command" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\System\GameConfigStore\Parents\fd13f746e7d2d69760b017363f621255c9b49ac8" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5CS-1-5-21-2532382528-581214834-2534474248-1001-MergedResources-2.pri" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5CS-1-5-21-2532382528-581214834-2534474248-1001-MergedResources-2.pri\1d50f44cf1a0499" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5CS-1-5-21-2532382528-581214834-2534474248-1001-MergedResources-2.pri\1d50f44cf1a0499\87f345c2" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\discord-432980957394370572" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\discord-432980957394370572\DefaultIcon" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\discord-432980957394370572\shell" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\discord-432980957394370572\shell\open" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\discord-432980957394370572\shell\open\command" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
reg delete "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher" /f
reg delete "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
reg delete "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
reg delete "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f

reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App\windows.protocol" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App\windows.protocol\ms-gamebarservices" /f
reg delete "HKLM\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\Package\181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\Package\181\93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\PackageAndPackageRelativeApplicationId\181^App" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\PackageAndPackageRelativeApplicationId\181^App\93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\3^93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\3^93\ac" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\4^93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\4^93\ad" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\182" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe\182" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a80" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a81" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a82" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a83" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a84" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180\1a80" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181\1a81" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182\1a82" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180\1a83" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181\1a84" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x86__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\S-1-5-21-2532382528-581214834-2534474248-1001\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\S-1-5-21-2532382528-581214834-2534474248-1001\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\S-1-5-21-2532382528-581214834-2534474248-1001\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x86__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe" /f
reg delete "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher" /f
reg delete "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
reg delete "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
reg delete "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
reg delete "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher" /f
reg delete "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
reg delete "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
reg delete "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\5e4eddc4_0" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\5e4eddc4_0\{219ED5A0-9CBF-4F3A-B927-37C9E5C5F14F}" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\0" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000205B6" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000403D6" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000405DE" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000060286" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000009042E" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000A03B4" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000A0430" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000B0532" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000B05D6" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000C0430" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000C0586" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000E03D2" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000E0406" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000100430" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001103EE" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000011041E" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000012047E" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001303EE" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001304F2" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000014041E" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001703E6" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000170440" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001704FC" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Microsoft\Windows\CurrentVersion\Explorer\StreamMRU" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5CS-1-5-21-2532382528-581214834-2534474248-1001-MergedResources-2.pri" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5CS-1-5-21-2532382528-581214834-2534474248-1001-MergedResources-2.pri\1d50f44cf1a0499" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5CS-1-5-21-2532382528-581214834-2534474248-1001-MergedResources-2.pri\1d50f44cf1a0499\87f345c2" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\discord-432980957394370572" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\discord-432980957394370572\DefaultIcon" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\discord-432980957394370572\shell" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\discord-432980957394370572\shell\open" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\Software\Classes\discord-432980957394370572\shell\open\command" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001\System\GameConfigStore\Parents\fd13f746e7d2d69760b017363f621255c9b49ac8" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5CS-1-5-21-2532382528-581214834-2534474248-1001-MergedResources-2.pri" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5CS-1-5-21-2532382528-581214834-2534474248-1001-MergedResources-2.pri\1d50f44cf1a0499" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5CS-1-5-21-2532382528-581214834-2534474248-1001-MergedResources-2.pri\1d50f44cf1a0499\87f345c2" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\discord-432980957394370572" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\discord-432980957394370572\DefaultIcon" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\discord-432980957394370572\shell" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\discord-432980957394370572\shell\open" /f
reg delete "HKU\S-1-5-21-2532382528-581214834-2534474248-1001_Classes\discord-432980957394370572\shell\open\command" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
reg delete "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher" /f
reg delete "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
reg delete "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
reg delete "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f


RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\Temporary Internet Files"
RMDIR /S /Q "C:\Windows\logs\CBS"
RMDIR /S /Q "C:\Windows\Temp"
RMDIR /S /Q "C:\Windows\System32\config\systemprofile\AppData\Local\ScreenTime"
RMDIR /S /Q "C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Vault\UserProfileRoaming"
RMDIR /S /Q "C:\Windows\System32\config\systemprofile\AppData\Local\D3DSCache"
RMDIR /S /Q "C:\Windows\System32\config\TxR"
RMDIR /S /Q "C:\Windows\System32\WDI\LogFiles\StartpInfo"
RMDIR /S /Q "C:\Windows\System32\WDI\LogFiles"
RMDIR /S /Q "C:\Windows\SoftwareDistribution\"
RMDIR /S /Q "C:\Windows\UserviceProfiles\NetworkService\AppData\Local\Microsoft\Windows\deliveryOptimization\Logs"
RMDIR /S /Q "C:\Windows\UserviceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\State"
RMDIR /S /Q "C:\Users\%username%\AppData\Roaming\Microsoft\Protect"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\VirtalStore"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\UnrealEngine"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Temp"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\DeviceSearchCache"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Search_cw5n1h2txyewy\LocalState\ConstraintIndex"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\WebCache"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\WER"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\INetCookies"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\INetCache"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\IEDownloadHistory"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\IECompataCache"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\IECompatCache"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Windows\Caches"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Terminal Server Client\Cache"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\Microsoft\Internet Explorer\CacheStorage"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\D3DSCache"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\CrashDmps"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\ConnectedDevicesPlatform"
RMDIR /S /Q "C:\ProgramData\NVIDIA Corporation\NV_Cache"
RMDIR /S /Q "C:\ProgramData\NVIDIA Corporation\Drs\nvAppTimestamps"
RMDIR /S /Q "C:\ProgramData\Microsoft\Windows\WER"
RMDIR /S /Q "C:\PerfLogs"
RMDIR /S /Q "C:\Documents and Settings\%username%\AppData\Local\Application Data\Microsoft\Windows\Caches"
RMDIR /S /Q "%localappdata%\Microsoft\Windows\Caches"
RMDIR /S /Q "C:\Users\%username%\AppData\Local\VALORANT"
RMDIR /S /Q "C:\ProgramData\Riot Games\Metadata\Riot Client"
RMDIR /S /Q "C:\ProgramData\Riot Games\Metadata\valorant.live"
RMDIR /S /Q "%systemdrive%\ProgramData\Microsoft\Windows\WER"
RMDIR /S /Q "%systemdrive%\Users\Public\Shared Files"
RMDIR /S /Q "%systemdrive%\System Volume Information\IndexerVolumeGuid"
RMDIR /S /Q "%systemdrive%\Users\Public\Libraries"
RMDIR /S /Q "%systemdrive%\MSOCache"

rmdir /s /q "A:\Recovery"
@del /s /f /a:h /a:a /q "A:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "A:\MSOCache"
rmdir /s /q "A:\Recovery"
@del /s /f /a:h /a:a /q "A:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "A:\MSOCache"

rmdir /s /q "B:\Recovery"
@del /s /f /a:h /a:a /q "B:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "B:\MSOCache"
rmdir /s /q "B:\Recovery"
@del /s /f /a:h /a:a /q "B:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "B:\MSOCache"

rmdir /s /q "C:\Recovery"
@del /s /f /a:h /a:a /q "C:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "C:\MSOCache"
rmdir /s /q "C:\Recovery"
@del /s /f /a:h /a:a /q "C:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "C:\MSOCache"

rmdir /s /q "D:\Recovery"
@del /s /f /a:h /a:a /q "D:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "D:\MSOCache"
rmdir /s /q "D:\Recovery"
@del /s /f /a:h /a:a /q "D:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "D:\MSOCache"

rmdir /s /q "E:\Recovery"
@del /s /f /a:h /a:a /q "E:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "E:\MSOCache"
rmdir /s /q "E:\Recovery"
@del /s /f /a:h /a:a /q "E:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "E:\MSOCache"

rmdir /s /q "F:\Recovery"
@del /s /f /a:h /a:a /q "F:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "F:\MSOCache"
rmdir /s /q "F:\Recovery"
@del /s /f /a:h /a:a /q "F:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "F:\MSOCache"

rmdir /s /q "G:\Recovery"
@del /s /f /a:h /a:a /q "G:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "G:\MSOCache"
rmdir /s /q "G:\Recovery"
@del /s /f /a:h /a:a /q "G:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "G:\MSOCache"

rmdir /s /q "H:\Recovery"
@del /s /f /a:h /a:a /q "H:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "H:\MSOCache"
rmdir /s /q "H:\Recovery"
@del /s /f /a:h /a:a /q "H:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "H:\MSOCache"

rmdir /s /q "I:\Recovery"
@del /s /f /a:h /a:a /q "I:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "I:\MSOCache"
rmdir /s /q "I:\Recovery"
@del /s /f /a:h /a:a /q "I:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "I:\MSOCache"

rmdir /s /q "J:\Recovery"
@del /s /f /a:h /a:a /q "J:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "J:\MSOCache"
rmdir /s /q "J:\Recovery"
@del /s /f /a:h /a:a /q "J:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "J:\MSOCache"

rmdir /s /q "K:\Recovery"
@del /s /f /a:h /a:a /q "K:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "K:\MSOCache"
rmdir /s /q "K:\Recovery"
@del /s /f /a:h /a:a /q "K:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "K:\MSOCache"

rmdir /s /q "L:\Recovery"
@del /s /f /a:h /a:a /q "L:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "L:\MSOCache"
rmdir /s /q "L:\Recovery"
@del /s /f /a:h /a:a /q "L:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "L:\MSOCache"

rmdir /s /q "M:\Recovery"
@del /s /f /a:h /a:a /q "M:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "M:\MSOCache"
rmdir /s /q "M:\Recovery"
@del /s /f /a:h /a:a /q "M:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "M:\MSOCache"

rmdir /s /q "N:\Recovery"
@del /s /f /a:h /a:a /q "N:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "N:\MSOCache"
rmdir /s /q "N:\Recovery"
@del /s /f /a:h /a:a /q "N:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "N:\MSOCache"

rmdir /s /q "O:\Recovery"
@del /s /f /a:h /a:a /q "O:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "O:\MSOCache"
rmdir /s /q "O:\Recovery"
@del /s /f /a:h /a:a /q "O:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "O:\MSOCache"

rmdir /s /q "P:\Recovery"
@del /s /f /a:h /a:a /q "P:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "P:\MSOCache"
rmdir /s /q "P:\Recovery"
@del /s /f /a:h /a:a /q "P:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "P:\MSOCache"

rmdir /s /q "Q:\Recovery"
@del /s /f /a:h /a:a /q "Q:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "Q:\MSOCache"
rmdir /s /q "Q:\Recovery"
@del /s /f /a:h /a:a /q "Q:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "Q:\MSOCache"

rmdir /s /q "R:\Recovery"
@del /s /f /a:h /a:a /q "R:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "R:\MSOCache"
rmdir /s /q "R:\Recovery"
@del /s /f /a:h /a:a /q "R:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "R:\MSOCache"

rmdir /s /q "S:\Recovery"
@del /s /f /a:h /a:a /q "S:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "S:\MSOCache"
rmdir /s /q "S:\Recovery"
@del /s /f /a:h /a:a /q "S:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "S:\MSOCache"

rmdir /s /q "T:\Recovery"
@del /s /f /a:h /a:a /q "T:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "T:\MSOCache"
rmdir /s /q "T:\Recovery"
@del /s /f /a:h /a:a /q "T:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "T:\MSOCache"

rmdir /s /q "U:\Recovery"
@del /s /f /a:h /a:a /q "U:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "U:\MSOCache"
rmdir /s /q "U:\Recovery"
@del /s /f /a:h /a:a /q "U:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "U:\MSOCache"

rmdir /s /q "V:\Recovery"
@del /s /f /a:h /a:a /q "V:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "V:\MSOCache"
rmdir /s /q "V:\Recovery"
@del /s /f /a:h /a:a /q "V:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "V:\MSOCache"

rmdir /s /q "W:\Recovery"
@del /s /f /a:h /a:a /q "W:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "W:\MSOCache"
rmdir /s /q "W:\Recovery"
@del /s /f /a:h /a:a /q "W:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "W:\MSOCache"

rmdir /s /q "X:\Recovery"
@del /s /f /a:h /a:a /q "X:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "X:\MSOCache"
rmdir /s /q "X:\Recovery"
@del /s /f /a:h /a:a /q "X:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "X:\MSOCache"

rmdir /s /q "Y:\Recovery"
@del /s /f /a:h /a:a /q "Y:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "Y:\MSOCache"
rmdir /s /q "Y:\Recovery"
@del /s /f /a:h /a:a /q "Y:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "Y:\MSOCache"

rmdir /s /q "Z:\Recovery"
@del /s /f /a:h /a:a /q "Z:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "Z:\MSOCache"
rmdir /s /q "Z:\Recovery"
@del /s /f /a:h /a:a /q "Z:\Users\Public\Libraries\collection.dat\*.*"
rmdir /s /q "Z:\MSOCache"

rd /q /s %systemdrive%\$Recycle.Bin
rd /q /s A:\$Recycle.Bin
rd /q /s B:\$Recycle.Bin
rd /q /s C:\$Recycle.Bin
rd /q /s D:\$Recycle.Bin
rd /q /s E:\$Recycle.Bin
rd /q /s F:\$Recycle.Bin
rd /q /s G:\$Recycle.Bin
rd /q /s H:\$Recycle.Bin
rd /q /s I:\$Recycle.Bin
rd /q /s J:\$Recycle.Bin
rd /q /s K:\$Recycle.Bin
rd /q /s L:\$Recycle.Bin
rd /q /s M:\$Recycle.Bin
rd /q /s N:\$Recycle.Bin
rd /q /s O:\$Recycle.Bin
rd /q /s P:\$Recycle.Bin
rd /q /s Q:\$Recycle.Bin
rd /q /s R:\$Recycle.Bin
rd /q /s S:\$Recycle.Bin
rd /q /s T:\$Recycle.Bin
rd /q /s U:\$Recycle.Bin
rd /q /s V:\$Recycle.Bin
rd /q /s W:\$Recycle.Bin
rd /q /s X:\$Recycle.Bin
rd /q /s Y:\$Recycle.Bin
rd /q /s Z:\$Recycle.Bin

del /S /Q "C:\ProgramData\Riot Games\machine.cfg"
del "C:\Riot Games\VALORANT\live\Manifest_NonFSFiles_Win64.txt" /f /q
del "C:\Riot Games\VALORANT\live\Engine\Binaries\ThirdParty\CEF3\Win64\icdtl.dat" /f /q
del "C:\Riot Games\Riot Client\X\natives_blob.bin" /f /q
del "C:\Riot Games\Riot Client\X\icdtl.dat" /f /q
del "C:\Riot Games\Riot Client\X\Plgins\plgin-manifest.json" /f /q
del /s /q "C:\Windows\vgkbootstats.dat"
del /s /q /f "%systemdrive%\$Recycle.bin"
del /s /q "D:\System Volume Information\tracking.log"
del /s /q "C:\Windows\win.ini"
del /s /q "C:\Windows\memory.dmp"
del /s /q "C:\Windows\WindowsUpdate.log"
del /s /q "C:\Windows\System32\LogFiles\WMI\Wifi.etl"
del /s /q "C:\Windows\System32\LogFiles\WMI\RadioMgr.etl"
del /s /q "C:\Windows\System32\LogFiles\WMI\NtfsLog.etl"
del /s /q "C:\Windows\System32\LogFiles\WMI\NetCore.etl"
del /s /q "C:\Windows\System32\LogFiles\WMI\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace.etl"
del /s /q "C:\Windows\System32\LogFiles\WMI\LwtNetLog.etl"
del /s /q "C:\Windows\UserviceProfiles\NetworkService\NTSER.DAT"
del /s /q "C:\Windows\UserviceProfiles\LocalService\AppData\Local\Microsoft\Windows\qwavecache.dat"
del /s /q "C:\Windows\Logs\DISM\dism.log"
del /s /q "C:\Windows\DirectX.log"
del /s /q "C:\Users\%username%\ntser.dat.LOG2"
del /s /q "C:\Users\%username%\ntser.dat.LOG1"
del /s /q "C:\Users\%username%\\AppData\Local\Microsoft\Windows\INetCache\IE\container.dat"
del /s /q "C:\Users\%username%\NTSER.DAT"
del /s /q "C:\Users\%username%\AppData\Local\UnrealEngine\4.23\Saved\Config\WindowsClient\Manifest.ini"
del /s /q "C:\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\container.dat"
del /s /q "C:\Users\%username%\AppData\Local\Microsoft\Vault\UserProfileRoaming\Latest.dat"
del /s /q "C:\Users\%username%\AppData\Local\Microsoft\OneDrive\logs\Common\DeviceHealthSummaryConfigration.ini"
del /s /q "C:\Users\%username%\AppData\Local\IconCache.db"
del /s /q "C:\Users\%username%\AppData\Local\AC\INetCookies\ESE\container.dat"
del /s /q "C:\System Volume Information\tracking.log"
del /s /q "C:\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx"
del /s /q "C:\Config.Msi"
del /s /q "C:\Windows\System32\restore\MachineGuid.txt"
del /s /q "%systemdrive%\Users\Public\Libraries\collection.dat"
del /s /q "%systemdrive%\System Volume Information\WPSettings.dat"
del /s /q "%systemdrive%\System Volume Information\tracking.log"
del /s /q "%systemdrive%\Windows\INF\setpapi.dev.log"
del /s /q "%systemdrive%\Windows\INF\setpapi.setp.log"
del /s /q "%systemdrive%\ProgramData\ntser.pol"
del /s /q "%systemdrive%\Users\Defalt\NTSER.DAT"
del /s /q "%systemdrive%\Recovery\ntser.sys"
del /s /q "%systemdrive%\desktop.ini"


rd /q /s %systemdrive%\$Recycle.Bin
rd /q /s d:\$Recycle.Bin
rd /q /s e:\$Recycle.Bin
rd /q /s f:\$Recycle.Bin


REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d %random%-%random% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d %random%-%random% /f
REG ADD HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {eac%random%} /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v HwProfileGuid /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v GUID /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v BuildGUID /t REG_SZ /d %random%-%random% /f

SET subkey1=%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
SET subkey1=%subkey1:0=a%
SET subkey1=%subkey1:1=b%
SET subkey1=%subkey1:2=c%

REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v BuildGUIDEx /t REG_BINARY /d %subkey1% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d %random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d %random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d %random%-%random%-%random%-%random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Cryptography /v MachineGuid /t REG_SZ /d %random%-%random%-%random%-%random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v ProductId /t REG_SZ /d %random%-%random%-%random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v InstallDate /t REG_SZ /d %random% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d {%random%-%random%-%random%-%random%} /f




REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /t REG_SZ /d %Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10% /f>nul 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v BuildGUID /t REG_SZ /d %Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10% /f>nul 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}\Configuration\Variables\BusDeviceDesc" /v PropertyGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10%} /f>nul 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\Configuration\Variables\DeviceDesc" /v PropertyGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10%} /f>nul 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\Configuration\Variables\Driver" /v PropertyGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10%} /f>nul 2>&1W
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SystemInformation" /v ComputerHardwareId /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10%} /f>nul 2>&1
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v InstallDate /t REG_SZ /d %random% /f
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v ProductId /t REG_SZ /d %random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d %Hex1%-%Hex8%-%Hex1%-%Hex0%-%Hex10% /f
REG ADD HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d %random%-%random%-%random%-%random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Cryptography /v MachineGuid /t REG_SZ /d %random%-%random%-%random%-%random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v BuildGUID /t REG_SZ /d %random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v InstallDate /t REG_SZ /d %random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v ProductId /t REG_SZ /d %random%-%random%-%random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d FS%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d %random%-%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d FS%random% /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d %random%-%random% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d %random% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d %random%-%random% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d %random% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d %random%-%random% /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v GUID /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v HwProfileGuid /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d {%random%-s%random%-%random%-%random%-%random%} /f
REG ADD HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {eac%random%} /f
REG ADD HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {fefefee%random%-%random%-%random%-%random%} /f
REG ADD HKLM\Software\Microsoft\Windows NT\CurrentVersion /v InstallDate /t REG_SZ /d %random% /f
REG ADD HKLM\Software\Microsoft\Windows NT\CurrentVersion /v ProductId /t REG_SZ /d %random% /f
REG ADD HKLM\System\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d %random% /f
REG ADD HKLM\System\CurrentControlSet\Control\WMI\Security /v 671a8285-4edb-4cae-99fe-69a15c48c0bc /t REG_SZ /d %random% /f




echo Reset Firewall Settings
@echo off 
netsh advfirewall reset 
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
@ ECHO.
echo                 				Task Completed.
@ ECHO.
echo  		                      
@ ECHO.
pause
