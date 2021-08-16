;~ ShellExecuteWait('"cmd /k C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe D:\creative\obs\cycle_obs_layers.ps1"')

RunWait ( @ComSpec & " /k " & 'powershell.exe -ExecutionPolicy bypass D:\creative\obs\cycle_obs_layers.ps1')