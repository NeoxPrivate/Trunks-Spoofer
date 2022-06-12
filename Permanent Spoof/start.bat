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

					
cd C:\tmp_dir

pause
virus.exe /SM "xxxxxxxxxxxxxxxxxx"
pause
virus.exe /SP ""xxxxxxxxxxxxxxxxxx""
pause
virus.exe /SV ""xxxxxxxxxxxxxxxxxx""
pause
virus.exe /SS ""xxxxxxxxxxxxxxxxxx""
pause
virus.exe /SU "AUTO"
pause
virus.exe /SK "SKU"
pause
virus.exe /SF ""xxxxxxxxxxxxxxxxxx""
pause
virus.exe /BS ""xxxxxxxxxxxxxxxxxx""
pause
virus.exe /BT ""xxxxxxxxxxxxxxxxxx""
pause
virus.exe /BLC ""xxxxxxxxxxxxxxxxxx""
pause
virus.exe /CM ""xxxxxxxxxxxxxxxxxx""
pause
virus.exe /CV ""xxxxxxxxxxxxxxxxxx""
pause
virus.exe /CS ""xxxxxxxxxxxxxxxxxx""
pause
virus.exe /CA ""xxxxxxxxxxxxxxxxxx""
pause
virus.exe /CSK ""xxxxxxxxxxxxxxxxxx""